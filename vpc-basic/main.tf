resource "aws_vpc" "main" {
  provider             = # aws.<alias> (optional)
  cidr_block           = # var.vpc_cidr
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Name        = "${var.project_name}-vpc"
    Environment = var.environment
    Purpose     = # e.g. "Application", "Networking", "Shared"
  }
}

resource "aws_subnet" "public_subnet" {
  provider                = # aws.<alias> (optional)
  count                   = # number of public subnets
  vpc_id                  = # aws_vpc.main.id
  cidr_block              = # var.public_subnet_cidr[count.index]
  availability_zone       = # var.availability_zones[count.index]
  map_public_ip_on_launch = true

  tags = {
    Name        = "${var.project_name}-public-subnet-${count.index + 1}"
    Environment = var.environment
  }
}

resource "aws_subnet" "private_subnet" {
  provider          = # aws.<alias> (optional)
  count             = # number of private subnets
  vpc_id            = # aws_vpc.main.id
  cidr_block        = # var.private_subnet_cidr[count.index]
  availability_zone = # var.availability_zones[count.index]

  tags = {
    Name        = "${var.project_name}-private-subnet-${count.index + 1}"
    Environment = var.environment
  }
}

resource "aws_internet_gateway" "igw" {
  provider = # aws.<alias> (optional)
  vpc_id   = # aws_vpc.main.id

  tags = {
    Name        = "${var.project_name}-igw"
    Environment = var.environment
  }
}

resource "aws_route_table" "rt" {
  provider = # aws.<alias> (optional)
  vpc_id   = # aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = # aws_internet_gateway.igw.id
  }

  tags = {
    Name        = "${var.project_name}-public-rt"
    Environment = var.environment
  }
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