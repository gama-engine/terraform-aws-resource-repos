# Security Group Configuration

## Purpose
Creates a security group to control inbound and outbound traffic for AWS resources.

## What is a Security Group?

A security group acts like a virtual firewall for AWS resources such as:
- EC2 instances
- Load balancers
- RDS databases

It controls:
- who can access the resource
- which ports are allowed
- what outbound traffic is permitted

## Components

### VPC Association

```hcl
vpc_id = aws_vpc.main.id
```

Associates the security group with a specific VPC.

Security groups only work inside a VPC.

---

## Ingress Rules

```hcl
ingress
```

Controls incoming traffic.

Example use cases:
- HTTP → Port 80
- HTTPS → Port 443
- SSH → Port 22

Example:
```hcl
from_port = 80
to_port   = 80
protocol  = "tcp"
```

Allows web traffic.

---

## Egress Rules

```hcl
egress
```

Controls outgoing traffic from the resource.

Most architectures allow all outbound traffic:

```hcl
cidr_blocks = ["0.0.0.0/0"]
```

---

## CIDR Block

```hcl
0.0.0.0/0
```

Means:
- traffic allowed from anywhere on the internet

Used carefully for:
- public web servers
- load balancers

Should NOT usually be used for:
- databases
- internal services

---

## Architecture Role

Security groups provide:
- network-level protection
- controlled access
- workload isolation

Common examples:
- Web SG → allows HTTP/HTTPS
- DB SG → allows MySQL only from web SG
- Bastion SG → allows SSH from trusted IPs



## Traffic Flow

Internet
    │
    ▼
ALB Security Group
    │
    ▼
Application Security Group
    │
    ▼
Database Security Group

## Important Concepts

- Stateful Firewall
- Ingress Rules
- Egress Rules
- Security Group Referencing
- Principle of Least Privilege

