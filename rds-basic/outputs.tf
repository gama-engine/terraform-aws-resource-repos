




output "db_instance_id" {
  description = "RDS Instance ID"
  value       = aws_db_instance.main.id
}

output "db_instance_arn" {
  description = "RDS Instance ARN"
  value       = aws_db_instance.main.arn
}

output "db_instance_endpoint" {
  description = "RDS Endpoint"
  value       = aws_db_instance.main.endpoint
}

output "db_instance_address" {
  description = "RDS Address"
  value       = aws_db_instance.main.address
}

output "db_instance_port" {
  description = "RDS Port"
  value       = aws_db_instance.main.port
}

output "db_subnet_group_name" {
  description = "DB Subnet Group Name"
  value       = aws_db_subnet_group.main.name
}

output "parameter_group_name" {
  description = "DB Parameter Group Name"
  value       = aws_db_parameter_group.main.name
}
