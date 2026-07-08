# IAM Policy Attachment

## Purpose

Attaches an AWS Managed IAM Policy (or Customer Managed Policy) to an existing IAM Role.

## AWS Resources

- aws_iam_role_policy_attachment

## Use Cases

- Grant S3 Access
- Grant DynamoDB Access
- Grant CloudWatch Permissions
- Grant SSM Session Manager Access
- Grant ECS Permissions
- Grant EKS Permissions
- Grant Lambda Execution Permissions

## Architecture Flow

IAM Role
    │
    ▼
Managed IAM Policy
    │
    ▼
Policy Attachment

## Important Concepts

- AWS Managed Policy
- Customer Managed Policy
- Policy ARN
- Least Privilege

## Commands

```bash
terraform init
terraform plan
terraform apply
```

## Notes

- A role can have multiple managed policies attached.
- AWS Managed Policies are maintained by AWS.
- Customer Managed Policies are created within your AWS account.
- Prefer attaching only the permissions required by the workload.