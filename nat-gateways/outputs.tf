output "elastic_ip_ids" {
  description = "Elastic IP IDs"
  value       = aws_eip.main[*].id
}

output "nat_gateway_ids" {
  description = "NAT Gateway IDs"
  value       = aws_nat_gateway.main[*].id
}

output "private_route_table_ids" {
  description = "Private Route Table IDs"
  value       = aws_route_table.private[*].id
}
