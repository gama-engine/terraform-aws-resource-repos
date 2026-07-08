# IAM Roles & Policies

## Purpose

Creates IAM Roles, Policies, Policy Attachments, Instance Profiles, and IAM Users for AWS services.

## AWS Resources

- aws_iam_role
- aws_iam_role_policy
- aws_iam_role_policy_attachment
- aws_iam_instance_profile
- aws_iam_user
- aws_iam_policy_document (Data Source)

## Use Cases

- EC2 IAM Role
- Lambda Execution Role
- ECS Task Role
- CodeBuild Role
- CodePipeline Role
- Automation Users
- Custom IAM Policies

## Architecture Flow

AWS Service
      │
      ▼
IAM Role
      │
      ▼
IAM Policy
      │
      ▼
AWS Resources

EC2
 │
 ▼
Instance Profile
 │
 ▼
IAM Role

## Important Concepts

- IAM Role
- IAM Policy
- Managed Policy
- Inline Policy
- Assume Role Policy
- Instance Profile
- Least Privilege Principle

## Commands

```bash
terraform init
terraform plan
terraform apply
```

## Notes

- Roles are assumed by AWS services.
- Users are intended for automation or legacy scenarios.
- Prefer IAM Roles over IAM Users whenever possible.
- Grant only the permissions required.
- Use AWS Managed Policies when appropriate.