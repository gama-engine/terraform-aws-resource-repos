output "metric_filter_name" {
  description = "CloudWatch Metric Filter Name"
  value       = aws_cloudwatch_log_metric_filter.main.name
}

output "metric_filter_id" {
  description = "CloudWatch Metric Filter ID"
  value       = aws_cloudwatch_log_metric_filter.main.id
}
