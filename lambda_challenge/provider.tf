provider "aws" {
  region  = local.aws.region
  profile = "default"
  #access_key = var.AWS_ACCESS_KEY
  #secret_key = var.AWS_SECRET_KEY
}


terraform {
  required_version = ">= 1.0.5"
  required_providers {
    aws = ">= 3.57.0"

  }
}

# terraform {
#   backend "http" {}
# }


