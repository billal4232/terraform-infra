terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }

  backend "s3" {
    bucket         = "limonlab-terraform-state"
    key            = "dev/terraform.tfstate"
    region         = "eu-north-1"
    dynamodb_table = "limonlab-terraform-locks"
    encrypt        = true
    profile        = "limonlab"
  }
}

provider "aws" {
  region  = var.aws_region
  profile = "limonlab"
}