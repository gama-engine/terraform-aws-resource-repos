output "policy_name" {
  description = "IAM Policy Name"
  value       = aws_iam_role_policy.main.name
}

output "policy_id" {
  description = "IAM Policy ID"
  value       = aws_iam_role_policy.main.id
}
