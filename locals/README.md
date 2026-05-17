# Local Values Configuration

## Purpose
Defines reusable local values used across the Terraform infrastructure.

Local values help:
- reduce code repetition
- standardize naming
- simplify configuration management
- improve readability

---

# What are Locals?

Terraform locals act like internal variables within a project.

They allow computed or reusable values to be defined once and referenced multiple times.

Example:

```hcl
local.bucket_prefix
```

---

# Naming Convention Strategy

This configuration creates standardized resource names using:
- project name
- environment name
- random suffixes

Example naming pattern:

```text
project-environment-resource
```

Example:
```text
myapp-dev-upload-a1b2c3
```

---


# Why Locals Matter

Locals improve:
- maintainability
- readability
- naming consistency
- infrastructure organization

Instead of repeating long naming expressions multiple times, values are defined once and reused across the project.

---

# Architecture Benefit

Supports:
- reusable infrastructure patterns
- scalable naming conventions
- cleaner Terraform configurations