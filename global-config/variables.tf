variable "global_config" {
  description = "Global configuration shared across modules"

  type = object({
    project_name = string
    environment  = string
    aws_region   = string

    common_tags = map(string)
  })
}

#== tfvars file format for reference
global_config = {
  project_name = " "
  environment  = " "
  aws_region   = " "

  common_tags = {
    Owner       = "GaMa"
    ManagedBy   = "Terraform"
    Environment = "dev"
  }
}
