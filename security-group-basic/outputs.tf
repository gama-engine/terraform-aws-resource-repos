output "alb_security_group_id" {
  description = "Application Load Balancer Security Group ID"
  value       = aws_security_group.alb.id
}

output "app_security_group_id" {
  description = "Application Security Group ID"
  value       = aws_security_group.app.id
}

output "db_security_group_id" {
  description = "Database Security Group ID"
  value       = aws_security_group.db.id
}
