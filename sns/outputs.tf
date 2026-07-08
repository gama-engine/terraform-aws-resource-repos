output "topic_id" {
  description = "SNS Topic ID"
  value       = aws_sns_topic.main.id
}

output "topic_arn" {
  description = "SNS Topic ARN"
  value       = aws_sns_topic.main.arn
}

output "topic_name" {
  description = "SNS Topic Name"
  value       = aws_sns_topic.main.name
}

output "subscription_arn" {
  description = "SNS Subscription ARN"
  value       = aws_sns_topic_subscription.main.arn
}
