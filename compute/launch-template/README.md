# Launch Template

## Purpose

Creates an EC2 Launch Template for reusable instance configurations.

## AWS Resources

- aws_launch_template

## Use Cases

- Auto Scaling Groups
- Spot Instances
- EC2 Fleet
- Standardized EC2 Deployments

## Architecture Flow

AMI
 │
 ▼
Instance Type
 │
 ▼
Key Pair
 │
 ▼
Security Group
 │
 ▼
IAM Instance Profile
 │
 ▼
User Data
 │
 ▼
Launch Template

## Important Concepts

- Launch Template
- AMI
- Instance Type
- Security Groups
- IAM Instance Profile
- User Data
- EBS Volume
- Versioning

## Commands

```bash
terraform init
terraform plan
terraform apply
```

## Notes

- Launch Templates support versioning.
- User Data should be Base64 encoded.
- A Launch Template does not create an EC2 instance by itself.
- Commonly used with Auto Scaling Groups and EC2 Fleet.
- Update the default version after making changes if required.