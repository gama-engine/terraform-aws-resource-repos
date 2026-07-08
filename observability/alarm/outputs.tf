output "alarm_name" {
  description = "CloudWatch Alarm Name"
  value       = aws_cloudwatch_metric_alarm.main.alarm_name
}

output "alarm_arn" {
  description = "CloudWatch Alarm ARN"
  value       = aws_cloudwatch_metric_alarm.main.arn
}

output "alarm_id" {
  description = "CloudWatch Alarm ID"
  value       = aws_cloudwatch_metric_alarm.main.id
}
