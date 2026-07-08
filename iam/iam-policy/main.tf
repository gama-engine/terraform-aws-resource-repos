# =============================================================================
# Pattern Type : IAM Policy
# AWS Service  : IAM
# =============================================================================

# =============================================================================
# Build Chain for IAM Policy
#
# [IAM Role]
#       │
#       ▼
# [Policy Document]
#       │
#       ▼
# [Inline IAM Policy]
# =============================================================================


# =============================================================================
# Step 1 - Define IAM Permissions
# =============================================================================
data "aws_iam_policy_document" "permissions" {

  statement {

    sid    = # Statement Identifier
    effect = "Allow"

    actions = [
      # IAM Actions
      # Examples:
      # s3:GetObject
      # s3:PutObject
      # dynamodb:PutItem
      # sqs:SendMessage
      # logs:CreateLogGroup
    ]

    resources = [
      # Resource ARN(s)
    ]
  }

  # ===========================================================================
  # Add Additional Statements if Required
  # ===========================================================================
  #
  # statement {
  #
  #   sid    = # Statement Identifier
  #   effect = "Allow"
  #
  #   actions = [
  #     # IAM Actions
  #   ]
  #
  #   resources = [
  #     # Resource ARN(s)
  #   ]
  #
  # }
}


# =============================================================================
# Step 2 - Create Inline IAM Policy
# =============================================================================
resource "aws_iam_role_policy" "main" {

  name = # IAM Policy Name

  role = # IAM Role ID

  policy = data.aws_iam_policy_document.permissions.json
}


# =============================================================================
# HINTS
# =============================================================================
#
# sid
#   -> Statement Identifier
#
# actions
#   -> IAM Actions
#
# resources
#   -> Resource ARN(s)
#
# role
#   -> IAM Role ID
#
# name
#   -> IAM Policy Name
#
# =============================================================================