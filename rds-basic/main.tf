# =============================================================================
# Pattern Type : Amazon RDS
# Difficulty   : Intermediate
# AWS Service  : Amazon RDS
# =============================================================================

# =============================================================================
# Build Chain
#
# Private Subnets
#       │
#       ▼
# DB Subnet Group
#       │
#       ▼
# Parameter Group (Optional)
#       │
#       ▼
# Security Group
#       │
#       ▼
# RDS Instance
# =============================================================================


# =============================================================================
# Step 1 - Create DB Subnet Group
# =============================================================================
resource "aws_db_subnet_group" "main" {

  name = # DB Subnet Group Name

  subnet_ids = [
    # Private Subnet IDs
  ]

  tags = {

    Name = # DB Subnet Group Name

    Environment = # Environment

  }

}


# =============================================================================
# Step 2 - Create Parameter Group (Optional)
# =============================================================================
resource "aws_db_parameter_group" "main" {

  name = # Parameter Group Name

  family = # mysql8.0 | postgres16 | mariadb10.6

  description = # Parameter Group Description

}


# =============================================================================
# Step 3 - Create RDS Instance
# =============================================================================
resource "aws_db_instance" "main" {

  identifier = # Database Identifier

  allocated_storage = # Storage Size (GB)

  storage_type = # gp3 | gp2 | io1

  engine = # mysql | postgres | mariadb

  engine_version = # Engine Version

  instance_class = # DB Instance Class

  db_name = # Initial Database Name

  username = # Master Username

  password = # Master Password

  parameter_group_name = # Parameter Group Name

  vpc_security_group_ids = [
    # Database Security Group ID
  ]

  db_subnet_group_name = # DB Subnet Group Name

  publicly_accessible = false

  multi_az = # true | false

  backup_retention_period = # Number of Backup Days

  skip_final_snapshot = true

  deletion_protection = # true | false

  tags = {

    Name = # Database Name

    Environment = # Environment

  }

}


# =============================================================================
# HINTS
# =============================================================================
#
# subnet_ids
#   -> Private Subnet IDs
#
# family
#   -> mysql8.0 | postgres16 | mariadb10.6
#
# allocated_storage
#   -> Storage Size (GB)
#
# storage_type
#   -> gp3 | gp2 | io1
#
# engine
#   -> mysql | postgres | mariadb
#
# instance_class
#   -> db.t3.micro | db.t3.small
#
# username
#   -> Master Username
#
# password
#   -> Master Password
#
# parameter_group_name
#   -> Parameter Group Name
#
# vpc_security_group_ids
#   -> Database Security Group ID
#
# db_subnet_group_name
#   -> DB Subnet Group Name
#
# multi_az
#   -> true | false
#
# backup_retention_period
#   -> Number of Backup Days
#
# deletion_protection
#   -> true | false
#
# Environment
#   -> Dev | Test | Prod
#
# =============================================================================