
resource "aws_security_group" "alb" {
  name   = # Security Group Name
  vpc_id = # VPC ID

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = # Public CIDR Block | Internal CIDR Block
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = # Public CIDR Block | Internal CIDR Block
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name        = # Security Group Name
    Environment = # Environment
  }
}

resource "aws_security_group" "app" {
  name   = # Security Group Name
  vpc_id = # VPC ID

  ingress {
    from_port       = # Application Port
    to_port         = # Same as From Port
    protocol        = "tcp"
    security_groups = # Source Security Group ID (ALB)
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name        = # Security Group Name
    Environment = # Environment
  }
}

resource "aws_security_group" "db" {
  name   = # Security Group Name
  vpc_id = # VPC ID

  ingress {
    from_port       = # Database Port
    to_port         = # Same as From Port
    protocol        = "tcp"
    security_groups = # Source Security Group ID (Application) #Used for Data Servers
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name        = # Security Group Name
    Environment = # Environment
  }
}