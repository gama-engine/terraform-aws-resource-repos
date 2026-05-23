variable "global_config" {
  description = "Global configuration shared across modules"

  type = object({
    project_name = string
    environment  = string
    aws_region   = string

    common_tags = map(string)
  })
}
