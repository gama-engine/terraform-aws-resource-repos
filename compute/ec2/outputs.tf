output "instance_id" {
  description = "EC2 Instance ID"
  value       = aws_instance.main.id
}

output "instance_arn" {
  description = "EC2 Instance ARN"
  value       = aws_instance.main.arn
}

output "public_ip" {
  description = "Public IP Address"
  value       = aws_instance.main.public_ip
}

output "private_ip" {
  description = "Private IP Address"
  value       = aws_instance.main.private_ip
}

output "public_dns" {
  description = "Public DNS Name"
  value       = aws_instance.main.public_dns
}

output "private_dns" {
  description = "Private DNS Name"
  value       = aws_instance.main.private_dns
}
