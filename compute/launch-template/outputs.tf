output "launch_template_id" {
  description = "Launch Template ID"
  value       = aws_launch_template.main.id
}

output "launch_template_arn" {
  description = "Launch Template ARN"
  value       = aws_launch_template.main.arn
}

output "launch_template_name" {
  description = "Launch Template Name"
  value       = aws_launch_template.main.name
}

output "latest_version" {
  description = "Latest Launch Template Version"
  value       = aws_launch_template.main.latest_version
}

output "default_version" {
  description = "Default Launch Template Version"
  value       = aws_launch_template.main.default_version
}
