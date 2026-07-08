# IAM Policy

## Purpose

Creates a custom inline IAM Policy and attaches it to an IAM Role.

## AWS Resources

- aws_iam_role_policy
- aws_iam_policy_document

## Use Cases

- S3 Access
- DynamoDB Access
- SQS Permissions
- SNS Permissions
- CloudWatch Logs
- Custom IAM Permissions

## Architecture Flow

IAM Role
    │
    ▼
Policy Document
    │
    ▼
Inline IAM Policy

## Important Concepts

- IAM Policy
- IAM Actions
- Resource ARN
- Statement
- Least Privilege

## Commands

```bash
terraform init
terraform plan
terraform apply
```

## Notes

- Inline Policies belong to a single IAM Role.
- Use multiple statements for different permission sets.
- Grant only the permissions required.