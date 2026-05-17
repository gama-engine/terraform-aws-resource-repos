resource "aws_vpc" "main" {
  provider             = 
  cidr_block           = 
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Name        = "${var.project_name}-vpc"
    Environment = var.environment
    Purpose     = ""
  }
}

resource "aws_subnet" "public_subnet" {
  provider                = 
  count                   = 
  vpc_id                  = 
  cidr_block              = 
  availability_zone       = 
  map_public_ip_on_launch = true

  tags = {
    Name        = "${var.primary_region}-public_subnet"
    Environment = ""
  }
}

resource "aws_subnet" "private_subnet" {
  provider          = 
  count             = 
  vpc_id            = 
  cidr_block        =
  availability_zone = 

  tags = {
    Name        = "${var.project_name}-private-subnet-"
    Environment = ""
  }
}


resource "aws_internet_gateway" "igw" {
  provider = 
  vpc_id   = 

  tags = {
    Name        = "${var.project_name}-IGW"
    Environment = "Demo"
  }
}

resource "aws_route_table" "rt" {
  provider = 
  vpc_id   = 

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = 
  }

  tags = {
    Name        = "${var.project_name}-Route-Table"
    Environment = "Demo"
  }
}

resource "aws_route_table_association" "rta" {
  provider       = 
  subnet_id      = 
  route_table_id = 
}


