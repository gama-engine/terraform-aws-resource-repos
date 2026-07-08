# =============================================================================
# Build Chain for Secure Outbound Traffic
#
# [1. Elastic IP]
#        │
#        ▼
# [2. NAT Gateway (Minimum 1 per AZ)]
#        │
#        ▼
# [3. Private Route Table]
#        │
#        ▼
# [4. Private Route Table Association]
# =============================================================================


# =============================================================================
# Step 1 - Create Elastic IP(s)
# One Elastic IP is required for each NAT Gateway.
# =============================================================================
resource "aws_eip" "main" {
  count  = # Number of Elastic IPs (One per NAT Gateway)
  domain = "vpc"

  tags = {
    Name = "nat-eip-az-${count.index + 1}"
  }

  depends_on = [
    # Internet Gateway
  ]
}


# =============================================================================
# Step 2 - Create NAT Gateway(s)
# NAT Gateways must be deployed in Public Subnets.
# =============================================================================
resource "aws_nat_gateway" "main" {
  count = # Number of NAT Gateways (Minimum 1 per AZ)

  allocation_id = # Elastic IP Allocation ID
  subnet_id     = # Public Subnet ID

  tags = {
    Name = "nat-gateway-az-${count.index + 1}"
  }
}


# =============================================================================
# Step 3 - Create Private Route Table(s)
# One Private Route Table per NAT Gateway.
# =============================================================================
resource "aws_route_table" "private" {
  count = # Number of Private Route Tables
  vpc_id = # VPC ID

  tags = {
    Name = "private-route-table-${count.index + 1}"
  }
}


# =============================================================================
# Step 4 - Route Private Traffic through NAT Gateway
# =============================================================================
resource "aws_route" "private_default" {
  count = # Number of Private Routes

  route_table_id         = # Private Route Table ID
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = # NAT Gateway ID
}


# =============================================================================
# Step 5 - Associate Private Subnets with Private Route Tables
# =============================================================================
resource "aws_route_table_association" "private" {
  count = # Number of Private Subnets

  subnet_id      = # Private Subnet ID
  route_table_id = # Private Route Table ID
}


# =============================================================================
# HINTS
# =============================================================================
#
# count
#   -> Number of resources to create
#
# depends_on
#   -> Internet Gateway
#
# allocation_id
#   -> Elastic IP Allocation ID
#
# subnet_id
#   -> Public Subnet ID (NAT Gateway)
#   -> Private Subnet ID (Route Table Association)
#
# vpc_id
#   -> VPC ID
#
# route_table_id
#   -> Private Route Table ID
#
# nat_gateway_id
#   -> NAT Gateway ID
#
# =============================================================================