# CloudWatch Dashboard

## Purpose

Creates a CloudWatch Dashboard to visualize AWS and custom CloudWatch metrics.

## AWS Resources

- aws_cloudwatch_dashboard

## Use Cases

- Infrastructure Monitoring
- Application Monitoring
- Custom Business Metrics
- Operations Dashboard
- Performance Dashboard
- Executive Dashboard

## Architecture Flow

AWS Metrics / Custom Metrics
            │
            ▼
Dashboard Widgets
            │
            ▼
CloudWatch Dashboard

## Important Concepts

- Dashboard
- Widget
- Metric Visualization
- Time Series
- Statistics
- Custom Metrics

## Commands

```bash
terraform init
terraform plan
terraform apply
```

## Notes

- A dashboard can contain multiple widgets.
- Widgets can display AWS-managed or custom metrics.
- Arrange widgets using the `x` and `y` coordinates.
- Use meaningful titles and consistent periods for easier monitoring.
- Dashboards are read-only visualizations and do not generate alerts.