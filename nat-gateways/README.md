# NAT Gateway

## Purpose

Provides secure outbound internet access for resources in private subnets.

## AWS Resources

- aws_eip
- aws_nat_gateway
- aws_route_table
- aws_route
- aws_route_table_association

## Use Cases

- Private EC2 instances
- Private Application Servers
- Private EKS Worker Nodes
- Private ECS Tasks
- Secure outbound internet access

## Architecture Flow

Internet
    │
    ▼
Internet Gateway
    │
    ▼
Elastic IP
    │
    ▼
NAT Gateway
    │
    ▼
Private Route Table
    │
    ▼
Private Subnet

## Important Concepts

- Elastic IP
- NAT Gateway
- Private Route Table
- Route Table Association
- High Availability (One NAT Gateway per AZ)

## Commands

```bash
terraform init
terraform plan
terraform apply
```

## Notes

- Deploy one NAT Gateway per Availability Zone for High Availability.
- NAT Gateway must be placed in a Public Subnet.
- Private Route Tables should route internet traffic through the NAT Gateway.
- Private resources cannot receive inbound internet traffic through a NAT Gateway.