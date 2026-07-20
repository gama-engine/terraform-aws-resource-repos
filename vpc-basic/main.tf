resource "aws_vpc" "main" {
  provider             = # aws.<alias> (optional)
  cidr_block           = # var.vpc_cidr
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = merge(
  local.common_tags,
  {
    Name = "${local.common_tags.Project}-VPC"
  }
)
}

resource "aws_subnet" "public_subnet" {
  provider                = # aws.<alias> (optional)
  count                   = # number of public subnets
  vpc_id                  = # aws_vpc.main.id
  cidr_block              = # var.public_subnet_cidr[count.index]
  availability_zone       = # var.availability_zones[count.index]
  map_public_ip_on_launch = true

  tags = merge(
  local.common_tags,
  {
    Name = "${local.common_tags.Project}-public-subnet-${count.index + 1}"
  }
)
}

resource "aws_subnet" "private_subnet" {
  provider          = # aws.<alias> (optional)
  count             = # number of private subnets
  vpc_id            = # aws_vpc.main.id
  cidr_block        = # var.private_subnet_cidr[count.index]
  availability_zone = # var.availability_zones[count.index]

  tags = merge(
  local.common_tags,
  {
    Name =  "${local.common_tags.Project}-private-subnet-${count.index + 1}"
  }
  )
}

resource "aws_internet_gateway" "igw" {
  provider = # aws.<alias> (optional)
  vpc_id   = # aws_vpc.main.id

  tags = merge(
  local.common_tags,
  {
    Name = "${local.common_tags.Project}-IGW"
  }
  )
}

resource "aws_route_table" "rt" {
  provider = # aws.<alias> (optional)
  vpc_id   = # aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = # aws_internet_gateway.igw.id
  }

  tags = merge(
  local.common_tags,
  {
    Name = "${local.common_tags.Project}-Public-Toute-Table"
  }
  )
}

resource "aws_route_table_association" "rta" {
  provider       = # aws.<alias> (optional)
  subnet_id      = # aws_subnet.public_subnet[count.index].id
  route_table_id = # aws_route_table.rt.id
}

#A quick rule you can remember:

#One resource → .id

#aws_vpc.main.id
#aws_internet_gateway.igw.id
#aws_route_table.rt.id

#Multiple resources (count or for_each) → [*].id

#aws_subnet.public_subnet[*].id
#aws_subnet.private_subnet[*].id