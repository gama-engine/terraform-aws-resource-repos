# Amazon S3 (Basic)

## Purpose

Creates a secure Amazon S3 bucket with Versioning, Server-Side Encryption, Ownership Controls, and Public Access Block enabled.

## AWS Resources

- aws_s3_bucket
- aws_s3_bucket_versioning
- aws_s3_bucket_server_side_encryption_configuration
- aws_s3_bucket_ownership_controls
- aws_s3_bucket_public_access_block

## Use Cases

- Terraform Remote State
- Application Storage
- Backups
- Log Storage
- CI/CD Artifacts
- Static Assets
- Data Lake Foundation

## Architecture Flow

S3 Bucket
     │
     ▼
Versioning
     │
     ▼
Server-Side Encryption
     │
     ▼
Ownership Controls
     │
     ▼
Public Access Block

## Important Concepts

- Bucket Naming
- Versioning
- Server-Side Encryption (SSE)
- Bucket Ownership
- Public Access Block

## Commands

```bash
terraform init
terraform plan
terraform apply
```

## Notes

- Bucket names must be globally unique.
- Enable Versioning to protect against accidental deletion and overwrites.
- Enable Server-Side Encryption for data at rest.
- Use `BucketOwnerEnforced` ownership to disable ACLs.
- Block Public Access unless the bucket is intentionally public.