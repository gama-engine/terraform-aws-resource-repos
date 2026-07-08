# =============================================================================
# Pattern Type : Launch Template
# Difficulty   : Intermediate
# AWS Service  : Amazon EC2
# =============================================================================

# =============================================================================
# Build Chain for Launch Template
#
# [AMI]
#     │
#     ▼
# [Instance Type]
#     │
#     ▼
# [Key Pair]
#     │
#     ▼
# [Security Group]
#     │
#     ▼
# [IAM Instance Profile]
#     │
#     ▼
# [User Data]
#     │
#     ▼
# [Launch Template]
# =============================================================================


# =============================================================================
# Step 1 - Create Launch Template
# =============================================================================
resource "aws_launch_template" "main" {

  name = # Launch Template Name

  image_id = # Amazon Machine Image (AMI) ID

  instance_type = # EC2 Instance Type

  key_name = # EC2 Key Pair Name


  vpc_security_group_ids = [
    # Security Group ID(s)
  ]


  iam_instance_profile {

    name = # IAM Instance Profile Name

  }


  user_data = # User Data Script (Base64 Encoded)


  monitoring {

    enabled = # true | false

  }


  block_device_mappings {

    device_name = # Root Device Name (/dev/xvda)

    ebs {

      volume_size = # Root Volume Size (GB)

      volume_type = # gp3 | gp2 | io2

      encrypted = # true | false

      delete_on_termination = true

    }

  }


  tag_specifications {

    resource_type = "instance"

    tags = {

      Name = # EC2 Instance Name

      Environment = # Environment

    }

  }


  tags = {

    Name = # Launch Template Name

    Environment = # Environment

  }

}


# =============================================================================
# HINTS
# =============================================================================
#
# name
#   -> Launch Template Name
#
# image_id
#   -> Amazon Machine Image (AMI) ID
#
# instance_type
#   -> t3.micro | t3.small | t3.medium
#
# key_name
#   -> EC2 Key Pair Name
#
# vpc_security_group_ids
#   -> Security Group ID(s)
#
# iam_instance_profile
#   -> IAM Instance Profile Name
#
# user_data
#   -> Base64 Encoded User Data Script
#
# monitoring
#   -> true | false
#
# device_name
#   -> /dev/xvda
#
# volume_size
#   -> Root Volume Size (GB)
#
# volume_type
#   -> gp3 | gp2 | io2
#
# encrypted
#   -> true | false
#
# Environment
#   -> Dev | Test | Prod
#
# =============================================================================