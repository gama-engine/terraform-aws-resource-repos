# CloudWatch Metric Filter

## Purpose

Creates a CloudWatch Log Metric Filter to convert matching log events into custom CloudWatch metrics.

## AWS Resources

- aws_cloudwatch_log_metric_filter

## Use Cases

- Count application errors
- Detect security events
- Track login failures
- Measure request latency
- Create custom business metrics

## Architecture Flow

CloudWatch Log Group
        │
        ▼
Log Pattern
        │
        ▼
Metric Filter
        │
        ▼
Custom CloudWatch Metric

## Important Concepts

- Log Filter Pattern
- Metric Transformation
- Custom Metrics
- Namespaces
- Metric Units

## Commands

```bash
terraform init
terraform plan
terraform apply
```

## Notes

- A Metric Filter requires an existing CloudWatch Log Group.
- Custom metrics created by Metric Filters can be used in CloudWatch Alarms and Dashboards.
- Use meaningful metric namespaces to organize application metrics.
- Test log filter patterns before using them in production.