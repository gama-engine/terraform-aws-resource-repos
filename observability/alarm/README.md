# CloudWatch Alarm

## Purpose

Creates a CloudWatch Metric Alarm to monitor AWS or custom metrics and trigger notifications or automated actions.

## AWS Resources

- aws_cloudwatch_metric_alarm

## Use Cases

- EC2 CPU Monitoring
- RDS Storage Monitoring
- ALB Request Monitoring
- Lambda Error Monitoring
- ECS Service Monitoring
- EKS Cluster Monitoring
- Custom Application Metrics

## Architecture Flow

AWS Metric / Custom Metric
           │
           ▼
CloudWatch Alarm
           │
           ▼
SNS Notification (Optional)

## Important Concepts

- Metric Namespace
- Dimensions
- Comparison Operators
- Thresholds
- Evaluation Periods
- Alarm Actions
- Missing Data Handling

## Commands

```bash
terraform init
terraform plan
terraform apply
```

## Notes

- CloudWatch Alarms can monitor both AWS-managed and custom metrics.
- Use dimensions to target a specific resource.
- Configure `treat_missing_data` based on the expected metric behavior.
- SNS Topics are the most common alarm action, but alarms can also trigger Auto Scaling actions or Systems Manager automation.