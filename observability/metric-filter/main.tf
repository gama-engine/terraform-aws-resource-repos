# =============================================================================
# Pattern Type : CloudWatch Metric Filter
# Difficulty   : Intermediate
# AWS Service  : Amazon CloudWatch Logs
# =============================================================================

# =============================================================================
# Build Chain
#
# CloudWatch Log Group
#        │
#        ▼
# Log Pattern
#        │
#        ▼
# Metric Filter
#        │
#        ▼
# Custom CloudWatch Metric
# =============================================================================


# =============================================================================
# Step 1 - Create Metric Filter
# =============================================================================
resource "aws_cloudwatch_log_metric_filter" "main" {

  name = # Metric Filter Name

  log_group_name = # CloudWatch Log Group Name

  pattern = # Log Filter Pattern

  metric_transformation {

    name = # Custom Metric Name

    namespace = # Metric Namespace

    value = # Metric Value

    default_value = # Default Value (Optional)

    unit = # Count | Bytes | Seconds | Milliseconds | Percent (Optional)

  }

}


# =============================================================================
# HINTS
# =============================================================================
#
# name
#   -> Metric Filter Name
#
# log_group_name
#   -> CloudWatch Log Group Name
#
# pattern
#   -> ERROR
#   -> WARNING
#   -> AccessDenied
#   -> Timeout
#   -> Custom Pattern
#
# metric_transformation.name
#   -> Errors
#   -> Requests
#   -> Latency
#   -> LoginFailures
#   -> Custom Metric
#
# namespace
#   -> Application
#   -> Monitoring
#   -> Security
#   -> Custom Namespace
#
# value
#   -> 1
#   -> $duration
#   -> $size
#
# default_value
#   -> 0
#
# unit
#   -> Count
#   -> Bytes
#   -> Seconds
#   -> Milliseconds
#   -> Percent
#
# =============================================================================