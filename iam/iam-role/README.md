# IAM Role

## Purpose

Creates an IAM Role that can be assumed by an AWS service.

## AWS Resources

- aws_iam_role
- aws_iam_policy_document (Trust Policy)

## Use Cases

- EC2 Instance Role
- Lambda Execution Role
- ECS Task Role
- CodeBuild Role
- CodePipeline Role

## Architecture Flow

AWS Service
      │
      ▼
Trust Policy
      │
      ▼
IAM Role

## Important Concepts

- IAM Role
- Trust Policy
- AssumeRole
- Service Principal
- Least Privilege

## Commands

```bash
terraform init
terraform plan
terraform apply
```

## Notes

- IAM Roles are assumed by AWS services.
- Every IAM Role requires a Trust Policy.
- Trust Policies define **who** can assume the role.
- Permissions are attached separately using IAM Policies.