# =============================================================================
# Pattern Type : Amazon SNS
# Difficulty   : Beginner
# AWS Service  : Amazon Simple Notification Service (SNS)
# =============================================================================

# =============================================================================
# Build Chain
#
# Publisher
#     │
#     ▼
# SNS Topic
#     │
#     ▼
# Topic Policy (Optional)
#     │
#     ▼
# Subscription
#     │
#     ▼
# Endpoint
# =============================================================================


# =============================================================================
# Step 1 - Create SNS Topic
# =============================================================================
resource "aws_sns_topic" "main" {

  name = # SNS Topic Name

  display_name = # Display Name (Optional)

  tags = {

    Name = # SNS Topic Name

    Environment = # Environment

  }

}


# =============================================================================
# Step 2 - Create Topic Subscription
# =============================================================================
resource "aws_sns_topic_subscription" "main" {

  topic_arn = # SNS Topic ARN

  protocol = # email | sms | sqs | lambda | https

  endpoint = # Email | Phone | Queue ARN | Lambda ARN | HTTPS Endpoint

}


# =============================================================================
# Step 3 - Create Topic Policy (Optional)
# Allows AWS Services or IAM Principals to Publish.
# =============================================================================
resource "aws_sns_topic_policy" "main" {

  arn = # SNS Topic ARN

  policy = jsonencode({

    Version = "2012-10-17"

    Statement = [

      {

        Sid = # Statement ID

        Effect = "Allow"

        Principal = {

          Service = # cloudwatch.amazonaws.com | events.amazonaws.com

        }

        Action = [

          "SNS:Publish"

        ]

        Resource = # SNS Topic ARN

      }

    ]

  })

}


# =============================================================================
# HINTS
# =============================================================================
#
# name
#   -> SNS Topic Name
#
# display_name
#   -> Friendly Display Name
#
# topic_arn
#   -> SNS Topic ARN
#
# protocol
#   -> email
#   -> sms
#   -> sqs
#   -> lambda
#   -> https
#
# endpoint
#   -> Email Address
#   -> Phone Number
#   -> SQS Queue ARN
#   -> Lambda Function ARN
#   -> HTTPS Endpoint
#
# Principal Service
#   -> cloudwatch.amazonaws.com
#   -> events.amazonaws.com
#   -> s3.amazonaws.com
#   -> codepipeline.amazonaws.com
#   -> codestar-notifications.amazonaws.com
#
# Environment
#   -> Dev | Test | Prod
#
# =============================================================================