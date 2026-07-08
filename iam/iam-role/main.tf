# =============================================================================
# Build Chain for IAM Role
#
# [AWS Service]
#       │
#       ▼
# [Trust Policy]
#       │
#       ▼
# [IAM Role]
# =============================================================================


# =============================================================================
# Step 1 - Define Trust Relationship
# Determines which AWS service can assume this role.
# =============================================================================
data "aws_iam_policy_document" "assume_role" {

  statement {
    effect = "Allow"

    actions = [
      "sts:AssumeRole"
    ]

    principals {

      type = Service

      identifiers = [
        # Service Principal
        # Examples:
        # ec2.amazonaws.com
        # lambda.amazonaws.com
        # ecs-tasks.amazonaws.com
        # codebuild.amazonaws.com
        # codepipeline.amazonaws.com
      ]
    }
  }
}


# =============================================================================
# Step 2 - Create IAM Role
# =============================================================================
resource "aws_iam_role" "main" {

  name = # IAM Role Name

  assume_role_policy = data.aws_iam_policy_document.assume_role.json

  tags = {
    Name        = # IAM Role Name
    Environment = # Environment
  }
}


# =============================================================================
# HINTS
# =============================================================================
#
# type
#   -> Principal Type
#
# identifiers
#   -> AWS Service Principal
#
# name
#   -> IAM Role Name
#
# Environment
#   -> Dev | Test | Prod
#
# =============================================================================