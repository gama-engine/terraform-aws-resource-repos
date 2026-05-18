# RDS Database Configuration

## Purpose
Creates a managed Amazon RDS MySQL database instance inside a private network environment.

This configuration includes:
- DB subnet group
- MySQL database instance
- private database deployment
- VPC integration
- security group association

---

# Resources Used

## aws_db_subnet_group

Defines which subnets the RDS instance can use.

RDS databases require a subnet group because AWS deploys databases inside a VPC.

### Why Multiple Subnets?

RDS commonly uses subnets across multiple Availability Zones for:
- high availability
- failover support
- improved reliability

### Best Practice
Database subnets should usually be:
- private
- isolated from the public internet

---

# aws_db_instance

Creates the actual managed MySQL database instance.

Amazon RDS handles:
- backups
- patching
- monitoring
- failover support
- database management tasks

---

# Key Configuration Components

## allocated_storage

Defines database storage size in GB.

Example:
```text
20 GB
50 GB
100 GB
```

---

## engine

Defines database engine type.

Example:
- MySQL
- PostgreSQL
- MariaDB

---

## engine_version

Specifies database engine version.

Helps maintain:
- compatibility
- predictable behavior
- controlled upgrades

---

## instance_class

Defines compute size for the database.

Example:
```text
db.t3.micro
db.t3.small
```

Controls:
- CPU
- memory
- database performance

---

## username and password

Database master credentials.

Often generated securely using:
- Terraform random_password
- AWS Secrets Manager

Avoid hardcoded credentials in production environments.

---

# Security Design

## publicly_accessible = false

Ensures the database is NOT directly exposed to the internet.

This is a critical security best practice.

Databases should typically only be accessible from:
- application servers
- backend services
- internal workloads

---

## vpc_security_group_ids

Controls network access to the database.

Common setup:
- allow MySQL traffic only from application security groups
- block public internet access

---

# Architecture Role

RDS acts as the persistent data storage layer for applications.

Common use cases:
- web applications
- backend services
- microservices
- analytics workloads

Typical architecture:

```text
Users → Load Balancer → App Servers → RDS Database
```

---

# Best Practices Implemented

- private database deployment
- VPC isolation
- controlled network access
- managed database service
- reusable infrastructure design