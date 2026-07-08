output "role_name" {
  description = "IAM Role Name"
  value       = aws_iam_role.main.name
}

output "role_arn" {
  description = "IAM Role ARN"
  value       = aws_iam_role.main.arn
}

output "role_id" {
  description = "IAM Role ID"
  value       = aws_iam_role.main.id
}
