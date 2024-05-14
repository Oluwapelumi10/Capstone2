terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.47.0"
    }
  }

  required_version = ">= 1.8.2"
}

provider "aws" {
  region                   = var.aws_region
  profile                  = "default"
  shared_credentials_files = ["~/.aws/credentials"]

}