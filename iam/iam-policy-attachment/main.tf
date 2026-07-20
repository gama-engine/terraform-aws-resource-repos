# =============================================================================
# Pattern Type : IAM Policy Attachment
# Difficulty   : Beginner
# AWS Service  : IAM
# =============================================================================

# =============================================================================
# Build Chain for IAM Policy Attachment
#
# [IAM Role]
#       │
#       ▼
# [Managed IAM Policy]
#       │
#       ▼
# [Policy Attachment]
# =============================================================================


# =============================================================================
# Step 1 - Attach Managed Policy to IAM Role
# =============================================================================
resource "aws_iam_role_policy_attachment" "main" {
  role = # IAM Role Name
  policy_arn = # Managed Policy ARN
}


# =============================================================================
# HINTS
# =============================================================================
#
# role
#   -> IAM Role Name
#
# policy_arn
#   -> AWS Managed Policy ARN
#
# Common AWS Managed Policies
#
# AmazonS3ReadOnlyAccess
# AmazonS3FullAccess
#
# AmazonEC2ReadOnlyAccess
#
# AmazonDynamoDBFullAccess
#
# AmazonSSMManagedInstanceCore
#
# CloudWatchAgentServerPolicy
#
# CloudWatchLogsFullAccess
#
# AWSLambdaBasicExecutionRole
#
# AmazonEC2ContainerRegistryReadOnly
#
# AmazonEKSClusterPolicy
#
# AmazonEKSWorkerNodePolicy
#
# AmazonEKS_CNI_Policy
#
# AmazonECSTaskExecutionRolePolicy
#
# AmazonECS_FullAccess
#
# AmazonSQSFullAccess
#
# AmazonSNSFullAccess
#
# AWSCodeBuildDeveloperAccess
#
# AWSCodePipelineFullAccess
#
# =============================================================================