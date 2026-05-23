# Terraform AWS Infrastructure

Production-style Terraform infrastructure using reusable modules and centralized global configuration.

---

# Architecture Overview

This project provisions AWS infrastructure using:

- Terraform modules
- Centralized global configuration
- Environment-specific variables
- Reusable infrastructure patterns

Resources include:

- VPC
- Public & Private Subnets
- EC2
- Security Groups
- S3
- RDS
- ALB

---

# Project Structure

```text
project/
│
├── main.tf
├── variables.tf
├── terraform.tfvars
├── outputs.tf
├── provider.tf
├── README.md
│
├── modules/
│   ├── vpc/
│   ├── ec2/
│   ├── alb/
│   ├── rds/
│   └── s3/
```

---

# Global Configuration

The project uses a centralized `global_config` object.

Example:

```hcl
global_config = {
  project_name = "expense-app"
  environment  = "dev"
  aws_region   = "ap-south-1"

  common_tags = {
    Owner      = "DevOps-Team"
    ManagedBy  = "Terraform"
  }
}
```

This configuration is passed from the root module into child modules.

---

# Terraform Workflow

## Initialize Terraform

```bash
terraform init
```

## Validate Configuration

```bash
terraform validate
```

## Preview Infrastructure

```bash
terraform plan
```

## Apply Infrastructure

```bash
terraform apply
```

## Destroy Infrastructure

```bash
terraform destroy
```

---

# Module Communication Flow

Root Module
↓
Global Config
↓
Child Modules
↓
AWS Resources

Example:

```hcl
module "vpc" {
  source = "./modules/vpc"

  global_config = var.global_config
}
```

---

# Variable Design

## Root Variables

Defined in:

- `variables.tf`

Values supplied using:

- `terraform.tfvars`

---

# Naming Convention

Resources follow:

```text
<project-name>-<environment>-<resource>
```

Example:

```text
expense-app-dev-vpc
expense-app-dev-alb
expense-app-dev-rds
```

---

# Best Practices Used

- Reusable modules
- Centralized configuration
- Tag standardization
- Environment isolation
- Infrastructure as Code
- DRY principles
- Provider version pinning

---

# Future Improvements

- Remote backend (S3 + DynamoDB)
- CI/CD pipeline
- Multi-environment support
- Terraform Cloud integration
- EKS deployment
- Monitoring stack

---

# Author

Gaddam Madhukanth
DevOps & Cloud Engineering Knowledge Project