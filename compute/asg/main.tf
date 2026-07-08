# =============================================================================
# Pattern Type : Auto Scaling Group
# Difficulty   : Intermediate
# AWS Service  : Amazon EC2 Auto Scaling
# =============================================================================

# =============================================================================
# Build Chain
#
# Launch Template
#        │
#        ▼
# Auto Scaling Group
#        │
#        ▼
# Scaling Policies
#        │
#        ▼
# CloudWatch Alarms
# =============================================================================


# =============================================================================
# Step 1 - Create Auto Scaling Group
# =============================================================================
resource "aws_autoscaling_group" "main" {

  name = # Auto Scaling Group Name

  min_size = # Minimum Number of Instances

  max_size = # Maximum Number of Instances

  desired_capacity = # Desired Number of Instances

  vpc_zone_identifier = [
    # Private Subnet IDs
  ]

  target_group_arns = [
    # Target Group ARN(s)
  ]

  health_check_type = # EC2 | ELB

  health_check_grace_period = # Seconds

  launch_template {

    id = # Launch Template ID

    version = # $Latest | $Default | Version Number

  }

  tag {

    key = "Name"

    value = # EC2 Instance Name

    propagate_at_launch = true

  }

}

# =============================================================================
# Step 2 - Create Target Tracking Scaling Policy
# Automatically scales the Auto Scaling Group based on a target metric.
# =============================================================================

resource "aws_autoscaling_policy" "target_tracking" {

  name = # Scaling Policy Name

  autoscaling_group_name = # Auto Scaling Group Name

  policy_type = "TargetTrackingScaling"

  target_tracking_configuration {

    predefined_metric_specification {

      predefined_metric_type = # ASGAverageCPUUtilization | ALBRequestCountPerTarget

    }

    target_value = # Target Metric Value

    disable_scale_in = # true | false (Optional)

  }

}


# =============================================================================
# Step 3 - Scale Out Policy
# =============================================================================
resource "aws_autoscaling_policy" "scale_out" {

  name = # Scale Out Policy Name

  autoscaling_group_name = # Auto Scaling Group Name

  adjustment_type = "ChangeInCapacity"

  scaling_adjustment = # Number of Instances

  cooldown = # Seconds

   autoscaling_group_name =

}


# =============================================================================
# Step 4 - Scale In Policy
# =============================================================================
resource "aws_autoscaling_policy" "scale_in" {

  name = # Scale In Policy Name

  autoscaling_group_name = # Auto Scaling Group Name

  adjustment_type = "ChangeInCapacity"

  scaling_adjustment = # Negative Number

  cooldown = # Seconds

   autoscaling_group_name =

}


# =============================================================================
# Step 5 - High CPU Alarm
# =============================================================================
resource "aws_cloudwatch_metric_alarm" "high_cpu" {

  alarm_name = # Alarm Name

  comparison_operator = "GreaterThanThreshold"

  evaluation_periods = # Number of Evaluation Periods

  metric_name = "CPUUtilization"

  namespace = "AWS/EC2"

  period = # Seconds

  statistic = "Average"

  threshold = # CPU Percentage

  alarm_actions = [
    # Scale Out Policy ARN
  ]

  dimensions = {

    AutoScalingGroupName = # Auto Scaling Group Name

  }

}


# =============================================================================
# Step 6 - Low CPU Alarm
# =============================================================================
resource "aws_cloudwatch_metric_alarm" "low_cpu" {

  alarm_name = # Alarm Name

  comparison_operator = "LessThanThreshold"

  evaluation_periods = # Number of Evaluation Periods

  metric_name = "CPUUtilization"

  namespace = "AWS/EC2"

  period = # Seconds

  statistic = "Average"

  threshold = # CPU Percentage

  alarm_actions = [
    # Scale In Policy ARN
  ]

  dimensions = {

    AutoScalingGroupName = # Auto Scaling Group Name

  }

}


# =============================================================================
# HINTS
# =============================================================================
#
# min_size
#   -> Minimum EC2 Instances
#
# max_size
#   -> Maximum EC2 Instances
#
# desired_capacity
#   -> Initial EC2 Instances
#
# vpc_zone_identifier
#   -> Private Subnet IDs
#
# target_group_arns
#   -> Target Group ARN(s)
#
# health_check_type
#   -> EC2 | ELB
#
# launch_template
#   -> Launch Template ID
#
# scaling_adjustment
#   -> +1 | +2 | -1 | -2
#
# cooldown
#   -> Seconds
#
# threshold
#   -> CPU Percentage
#
# alarm_actions
#   -> Auto Scaling Policy ARN
#
# =============================================================================