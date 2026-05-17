# Basic VPC

## Purpose
Creates a custom VPC for AWS infrastructure.

## Resources Used
- aws_vpc
- aws_subnet
- aws_internet_gateway
- aws_route_table

## Flow:
Internet → IGW → Public Subnet → App

## Use Cases
- Starting point for AWS networking
- Foundation for 2-tier or 3-tier architecture

## Architecture Flow
Internet → Internet Gateway → Public Subnet

## Important Concepts
- CIDR blocks
- Route tables
- Public vs private subnet

## Commands

terraform init
terraform plan
terraform apply

## Notes
- Keep CIDR ranges non-overlapping
- Public subnet needs route to IGW