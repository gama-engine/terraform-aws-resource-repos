# EC2 Instance

## Purpose

Creates an Amazon EC2 instance with configurable networking, storage, IAM, and monitoring settings.

## AWS Resources

- aws_instance

## Use Cases

- Web Server
- Application Server
- Bastion Host
- Jenkins Server
- Monitoring Server
- Development Environment

## Architecture Flow

AMI
 │
 ▼
Instance Type
 │
 ▼
Subnet
 │
 ▼
Security Group
 │
 ▼
IAM Instance Profile
 │
 ▼
EC2 Instance

## Important Concepts

- Amazon Machine Image (AMI)
- Instance Type
- Security Groups
- Key Pair
- User Data
- IAM Instance Profile
- EBS Root Volume
- Detailed Monitoring

## Commands

```bash
terraform init
terraform plan
terraform apply
```

## Notes

- Launch the instance in the correct subnet.
- Attach only the required Security Groups.
- Prefer IAM Roles over access keys.
- Enable EBS encryption for production workloads.
- Use User Data for bootstrapping.
- Choose the appropriate instance type based on workload.