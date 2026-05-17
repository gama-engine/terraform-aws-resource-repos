# S3 Bucket Configuration

## Purpose
Creates and secures an Amazon S3 bucket for object storage.

This configuration includes:
- bucket creation
- versioning
- server-side encryption
- public access protection

---

# Resources Used

## aws_s3_bucket

Creates the main S3 bucket.

S3 buckets are commonly used for:
- file uploads
- application storage
- backups
- logs
- static assets
- Terraform remote state

---

## Bucket Versioning

```hcl
aws_s3_bucket_versioning
```

Enables object versioning.

### Benefits
- protects against accidental deletion
- allows file recovery
- maintains object history

Example:
```text
file-v1
file-v2
file-v3
```

Useful for:
- backup systems
- production workloads
- Terraform state protection

---

## Server-Side Encryption

```hcl
aws_s3_bucket_server_side_encryption_configuration
```

Automatically encrypts stored objects.

### Encryption Method

```hcl
sse_algorithm = "AES256"
```

AWS manages encryption automatically using AES-256 encryption.

### Security Benefits
Protects:
- uploaded files
- sensitive data
- stored application assets

---

## Public Access Block

```hcl
aws_s3_bucket_public_access_block
```

Prevents accidental public exposure of the bucket.

### Security Controls

- block public ACLs
- block public bucket policies
- ignore public ACLs
- restrict public bucket access

### Why Important?

Misconfigured S3 buckets are one of the most common cloud security risks.

Public access blocks help prevent:
- unintended internet exposure
- sensitive data leaks
- insecure bucket policies

---

# Security Best Practices Implemented

This configuration follows common AWS security practices:

- encryption enabled
- versioning enabled
- public access blocked
- controlled bucket access

---

# Architecture Role

S3 buckets commonly serve as:
- application storage
- backup storage
- artifact repositories
- log storage
- infrastructure state storage

This configuration provides a secure reusable storage foundation.