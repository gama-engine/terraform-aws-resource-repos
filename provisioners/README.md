# Terraform Provider Configuration

## Purpose
Configures Terraform version requirements and AWS provider settings.

## Components

### Terraform Block
Defines:
- Minimum Terraform version
- Required providers
- Provider version constraints

### AWS Provider
Connects Terraform to AWS.

Terraform uses this provider to:
- authenticate with AWS
- create infrastructure
- manage cloud resources

## Provider Alias

```hcl
alias = "xxx"
```

Used to identify this AWS provider configuration.

Helpful when working with:
- multiple AWS regions
- disaster recovery setups
- multi-region architectures

Example:
- primary region → us-east-1
- secondary region → us-west-2

## Version Constraint

```hcl
version = "~> 5.0"
```

Ensures compatible AWS provider versions are used.

Prevents:
- breaking changes
- inconsistent behavior
- team environment issues

## Region

```hcl
region = var.primary_region
```

Specifies where AWS resources will be deployed.

Example:
- us-east-1
- ap-south-1
- eu-west-1