# =============================================================================
# Pattern Type : CloudWatch Log Group
# Difficulty   : Beginner
# AWS Service  : Amazon CloudWatch Logs
# =============================================================================

# =============================================================================
# Build Chain
#
# Application / Service
#        │
#        ▼
# CloudWatch Log Group
# =============================================================================


# =============================================================================
# Step 1 - Create CloudWatch Log Group
# =============================================================================
resource "aws_cloudwatch_log_group" "main" {

  name = # Log Group Name

  retention_in_days = # Log Retention Days

  kms_key_id = # KMS Key ARN (Optional)

  skip_destroy = # true | false (Optional)

  tags = {

    Name = # Log Group Name

    Environment = # Environment

  }

}


# =============================================================================
# HINTS
# =============================================================================
#
# name
#   -> CloudWatch Log Group Name
#
# retention_in_days
#   -> 1
#   -> 3
#   -> 5
#   -> 7
#   -> 14
#   -> 30
#   -> 60
#   -> 90
#   -> 120
#   -> 150
#   -> 180
#   -> 365
#
# kms_key_id
#   -> KMS Key ARN
#
# skip_destroy
#   -> true | false
#
# Environment
#   -> Dev | Test | Prod
#
# =============================================================================