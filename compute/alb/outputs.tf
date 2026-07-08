output "load_balancer_id" {
  description = "Application Load Balancer ID"
  value       = aws_lb.main.id
}

output "load_balancer_arn" {
  description = "Application Load Balancer ARN"
  value       = aws_lb.main.arn
}

output "load_balancer_dns_name" {
  description = "Application Load Balancer DNS Name"
  value       = aws_lb.main.dns_name
}

output "load_balancer_zone_id" {
  description = "Application Load Balancer Hosted Zone ID"
  value       = aws_lb.main.zone_id
}

output "target_group_arn" {
  description = "Target Group ARN"
  value       = aws_lb_target_group.main.arn
}

output "target_group_name" {
  description = "Target Group Name"
  value       = aws_lb_target_group.main.name
}

output "listener_arn" {
  description = "Listener ARN"
  value       = aws_lb_listener.http.arn
}
