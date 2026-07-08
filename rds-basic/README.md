# Amazon RDS

## Purpose

Creates a production-ready Amazon RDS instance with a DB Subnet Group and optional Parameter Group.

## AWS Resources

- aws_db_subnet_group
- aws_db_parameter_group
- aws_db_instance

## Use Cases

- MySQL Database
- PostgreSQL Database
- MariaDB Database
- Web Applications
- Backend APIs
- Multi-Tier Architectures

## Architecture Flow

Private Subnets
       │
       ▼
DB Subnet Group
       │
       ▼
Parameter Group (Optional)
       │
       ▼
Security Group
       │
       ▼
RDS Instance

## Important Concepts

- DB Subnet Group
- Parameter Group
- Multi-AZ
- Automated Backups
- Storage Types
- Security Groups
- Private Networking

## Commands

```bash
terraform init
terraform plan
terraform apply
```

## Notes

- Place RDS instances in **private subnets**.
- Use a dedicated Database Security Group.
- Enable Multi-AZ for production workloads.
- Configure an appropriate backup retention period.
- Enable deletion protection for production databases.
- Store database credentials securely (for example, in AWS Secrets Manager or a secure variable management process) instead of hardcoding them.