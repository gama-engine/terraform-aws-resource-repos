# =============================================================================
# Pattern Type : Amazon S3 Bucket
# Difficulty   : Beginner
# AWS Service  : Amazon S3
# =============================================================================

# =============================================================================
# Build Chain
#
# [S3 Bucket]
#      │
#      ▼
# [Versioning]
#      │
#      ▼
# [Server-Side Encryption]
#      │
#      ▼
# [Public Access Block]
# =============================================================================


# =============================================================================
# Step 1 - Create S3 Bucket
# =============================================================================
resource "aws_s3_bucket" "main" {

  bucket = # Globally Unique Bucket Name

}


# =============================================================================
# Step 2 - Enable Bucket Versioning
# =============================================================================
resource "aws_s3_bucket_versioning" "main" {

  bucket = # S3 Bucket ID

  versioning_configuration {

    status = "Enabled"

  }

}


# =============================================================================
# Step 3 - Enable Server-Side Encryption
# =============================================================================
resource "aws_s3_bucket_server_side_encryption_configuration" "main" {

  bucket = # S3 Bucket ID

  rule {

    apply_server_side_encryption_by_default {

      sse_algorithm = "AES256"

      # "AES256" | "aws:kms"

    }

  }

}


# =============================================================================
# Step 4 - Block Public Access
# =============================================================================
resource "aws_s3_bucket_public_access_block" "main" {

  bucket = # S3 Bucket ID

  block_public_acls       = true

  block_public_policy     = true

  ignore_public_acls      = true

  restrict_public_buckets = true

}


# =============================================================================
# HINTS
# =============================================================================
#
# bucket
#   -> Globally Unique Bucket Name
#
# status
#   -> Enabled | Suspended
#
# sse_algorithm
#   -> AES256 | aws:kms
#
# block_public_acls
#   -> true | false
#
# block_public_policy
#   -> true | false
#
# ignore_public_acls
#   -> true | false
#
# restrict_public_buckets
#   -> true | false
#
# =============================================================================