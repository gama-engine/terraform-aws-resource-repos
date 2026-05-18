# RDS Module - Main Configuration

# DB Subnet Group
resource "aws_db_subnet_group" "main" {
  name       = "xxx"
  subnet_ids = 

  tags = {
    Name        = "xxx"
    Environment = 
  }
}

# RDS MySQL Instance
resource "aws_db_instance" "main" {
  identifier             = "xxx"
  allocated_storage      = 
  storage_type           = "x"
  engine                 = "x"
  engine_version         = 
  instance_class         = 
  db_name                = 
  username               = 
  password               = 
  parameter_group_name   = "x"
  skip_final_snapshot    = true
  vpc_security_group_ids = []
  db_subnet_group_name   = 
  publicly_accessible    = false

  tags = {
    Name        = ""
    Environment = 
  }
}