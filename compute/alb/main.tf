# =============================================================================
# Pattern Type : Application Load Balancer
# Difficulty   : Intermediate
# AWS Service  : Elastic Load Balancing v2
# =============================================================================

# =============================================================================
# Build Chain
#
# Internet
#     │
#     ▼
# Application Load Balancer
#     │
#     ▼
# Listener
#     │
#     ▼
# Listener Rule (Optional)
#     │
#     ▼
# Target Group
#     │
#     ▼
# EC2 Instance(s)
# =============================================================================


# =============================================================================
# Step 1 - Create Application Load Balancer
# =============================================================================
resource "aws_lb" "main" {
  name = # Load Balancer Name
  internal = # true | false (Public Facing LB)
  load_balancer_type = "application"
  security_groups = [] # Security Group ID(s), Should be a list.
  subnets = [ ] # Public Subnet IDs, Should contain at least two subnets in different Availability Zones for an ALB.
  enable_deletion_protection = # true | false
  idle_timeout               = 60

  tags = {
    Name        = # Load Balancer Name
    Environment = # Environment
  }
}


# =============================================================================
# Step 2 - Create Target Group
# =============================================================================
resource "aws_lb_target_group" "main" {
  name = # Target Group Name
  port = # Target Port Number
  protocol = # HTTP | HTTPS
  target_type = # instance | ip | lambda | ALB
  vpc_id = # VPC ID

  health_check {
    enabled = true
    path = # Health Check Path
    protocol = # HTTP | HTTPS
    matcher = # Success Code, Should be an HTTP status code.
    interval = # Interval (Seconds)
    timeout = # Timeout (Seconds)
    healthy_threshold = # number, consecutive health checks before AWS marks it as Healthy
    unhealthy_threshold = # number, consecutive health checks before AWS marks it as Unhealthy
  }

  tags = {
    Name = # Target Group Name
    Environment = # Environment
  }

}


# =============================================================================
# Step 3 - Create Listener
# =============================================================================
resource "aws_lb_listener" "http" {
  load_balancer_arn = # Load Balancer ARN
  port = # Listener Port
  protocol = # HTTP | HTTPS

  default_action {
    type = "forward"
    target_group_arn = # Target Group ARN
  }

}


# =============================================================================
# Step 4 - Listener Rule (Optional)
# =============================================================================
resource "aws_lb_listener_rule" "main" {
  listener_arn = # Listener ARN
  priority = # Rule Priority

  action {
    type = "forward"
    target_group_arn = # Target Group ARN
  }

  condition {
    path_pattern {
      values = [
        # URL Path
      ]
    }
  }
}


# =============================================================================
# Step 5 - Register Target (Optional)
# Skip if using Auto Scaling Group.
# =============================================================================
resource "aws_lb_target_group_attachment" "main" {
  target_group_arn = # Target Group ARN
  target_id = # EC2 Instance ID
  port = # Target Port
}


# =============================================================================
# HINTS
# =============================================================================
#
# name
#   -> Load Balancer / Target Group Name
#
# internal
#   -> true (Internal) | false (Internet Facing)
#
# security_groups
#   -> ALB Security Group ID(s)
#
# subnets
#   -> Public Subnet IDs
#
# port
#   -> 80 | 443 | 8080
#
# protocol
#   -> HTTP | HTTPS
#
# target_type
#   -> instance | ip | lambda
#
# path
#   -> / | /health | /status
#
# matcher
#   -> 200 | 200-299
#
# priority
#   -> Listener Rule Priority
#
# target_id
#   -> EC2 Instance ID
#
# Environment
#   -> Dev | Test | Prod
#
# =============================================================================