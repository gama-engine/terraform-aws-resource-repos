locals {
  common_tags = {
    Environment = "Demo"
    Project     = "Name of the Project"
    Purpose     = "Learning"
  }
}


#==========================================
tags = merge(
  local.common_tags,
  {
    Name = "${local.common_tags.Project}-VPC"
  }
)
