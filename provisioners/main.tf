terraform {
  required_version = ">= 1.6.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}



# Provider for the region (us-east-1)
provider "aws" {
  region = 
  alias  = ""
}