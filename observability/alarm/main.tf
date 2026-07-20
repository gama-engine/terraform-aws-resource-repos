# =============================================================================
# Pattern Type : CloudWatch Alarm
# Difficulty   : Intermediate
# AWS Service  : Amazon CloudWatch
# =============================================================================

# =============================================================================
# Build Chain
#
# AWS Metric / Custom Metric
#          │
#          ▼
# CloudWatch Alarm
#          │
#          ▼
# SNS Notification (Optional)
# =============================================================================


# =============================================================================
# Step 1 - Create CloudWatch Alarm
# =============================================================================
resource "aws_cloudwatch_metric_alarm" "main" {

  alarm_name = # Alarm Name
  alarm_description = # Alarm Description (Optional)
  comparison_operator = # GreaterThanThreshold | LessThanThreshold | GreaterThanOrEqualToThreshold | LessThanOrEqualToThreshold
  evaluation_periods = # Number of Evaluation Periods
  metric_name = # CloudWatch Metric Name
  namespace = # AWS Namespace | Custom Namespace
  period = # Evaluation Period (Seconds)
  statistic = # Average | Sum | Maximum | Minimum | SampleCount
  threshold = # Alarm Threshold
  treat_missing_data = # breaching | notBreaching | ignore | missing
  actions_enabled = true
  alarm_actions = [
    # SNS Topic ARN(s)
  ]

  ok_actions = [
    # SNS Topic ARN(s) (Optional)
  ]

  insufficient_data_actions = [
    # SNS Topic ARN(s) (Optional)
  ]

  dimensions = {
    # Dimension Name = Dimension Value
  }

  tags = {
    Name = # Alarm Name
    Environment = # Environment
  }

}


# =============================================================================
# HINTS
# =============================================================================
#
# comparison_operator
#   -> GreaterThanThreshold
#   -> LessThanThreshold
#   -> GreaterThanOrEqualToThreshold
#   -> LessThanOrEqualToThreshold
#
# metric_name
#   -> CPUUtilization
#   -> NetworkIn
#   -> NetworkOut
#   -> StatusCheckFailed
#   -> Errors
#   -> Invocations
#   -> Duration
#   -> Custom Metric
#
# namespace
#   -> AWS/EC2
#   -> AWS/RDS
#   -> AWS/ApplicationELB
#   -> AWS/Lambda
#   -> AWS/ECS
#   -> AWS/EKS
#   -> Custom Namespace
#
# statistic
#   -> Average
#   -> Sum
#   -> Maximum
#   -> Minimum
#   -> SampleCount
#
# period
#   -> 60
#   -> 300
#   -> 900
#
# threshold
#   -> Alarm Threshold
#
# treat_missing_data
#   -> breaching
#   -> notBreaching
#   -> ignore
#   -> missing
#
# alarm_actions
#   -> SNS Topic ARN(s)
#
# dimensions
#   -> InstanceId
#   -> DBInstanceIdentifier
#   -> LoadBalancer
#   -> TargetGroup
#   -> FunctionName
#   -> ClusterName
#   -> ServiceName
#
# =============================================================================