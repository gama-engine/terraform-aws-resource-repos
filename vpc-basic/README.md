# Basic VPC

## Purpose
Creates a custom Virtual Private Cloud (VPC) with public and private subnets for AWS networking.

## AWS Resources
- aws_vpc
- aws_subnet (Public)
- aws_subnet (Private)
- aws_internet_gateway
- aws_route_table
- aws_route_table_association

## Use Cases
- AWS networking foundation
- 2-tier architecture
- 3-tier architecture
- Multi-tier application deployments

## Architecture Flow

Internet
    │
    ▼
Internet Gateway
    │
    ▼
Public Route Table
    │
    ▼
Public Subnet(s)

Private Subnet(s)
    ▲
    │
No Internet Access (until NAT Gateway is added)

## Important Concepts
- CIDR Blocks
- Public vs Private Subnets
- Route Tables
- Internet Gateway
- Availability Zones

## Commands

```bash
terraform init
terraform plan
terraform apply
```

## Notes
- Keep CIDR blocks non-overlapping.
- Use multiple Availability Zones for high availability.
- Public subnets require a route to the Internet Gateway.
- Private subnets require a NAT Gateway for outbound internet access.