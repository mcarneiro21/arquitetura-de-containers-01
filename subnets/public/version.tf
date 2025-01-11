provider "aws" {
  region  = "us-east-1"
}

terraform {
  required_version = ">= 1.6"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.64.0"
    }
  }

  backend "s3" {
    bucket = "arquitetura-containers-linuxtips"
    key    = "arquitetura-containers-01/subnets/public/terraform.tfstate"
    region = "us-east-1"
  }
}
