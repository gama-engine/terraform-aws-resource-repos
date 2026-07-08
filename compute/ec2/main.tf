# =============================================================================
# Pattern Type : EC2 Instance
# Difficulty   : Beginner
# AWS Service  : Amazon EC2
# =============================================================================

# =============================================================================
# Build Chain for EC2 Instance
#
# [AMI]
#     │
#     ▼
# [Instance Type]
#     │
#     ▼
# [Subnet]
#     │
#     ▼
# [Security Group]
#     │
#     ▼
# [IAM Instance Profile]
#     │
#     ▼
# [EC2 Instance]
# =============================================================================


# =============================================================================
# Step 1 - Launch EC2 Instance
# =============================================================================
resource "aws_instance" "main" {

  ami = # Amazon Machine Image (AMI) ID

  instance_type = # EC2 Instance Type

  subnet_id = # Public or Private Subnet ID

  vpc_security_group_ids = [
    # Security Group ID(s)
  ]

  key_name = # EC2 Key Pair Name

  iam_instance_profile = # IAM Instance Profile Name

  associate_public_ip_address = # true | false

  user_data = # User Data Script (Optional)

  monitoring = # true | false

  ebs_optimized = # true | false

  root_block_device {

    volume_size = # Root Volume Size (GB)

    volume_type = # gp3 | gp2 | io2 | st1 | sc1

    encrypted = # true | false

    delete_on_termination = true
  }

  tags = {

    Name = # EC2 Instance Name

    Environment = # Environment
  }
}


# =============================================================================
# HINTS
# =============================================================================
#
# ami
#   -> Amazon Machine Image ID
#
# instance_type
#   -> t2.micro | t3.micro | t3.small | t3.medium
#
# subnet_id
#   -> Public or Private Subnet ID
#
# vpc_security_group_ids
#   -> Security Group ID(s)
#
# key_name
#   -> EC2 Key Pair Name
#
# iam_instance_profile
#   -> IAM Instance Profile Name
#
# associate_public_ip_address
#   -> true | false
#
# user_data
#   -> EC2 Bootstrap Script
#
# monitoring
#   -> true | false
#
# ebs_optimized
#   -> true | false
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