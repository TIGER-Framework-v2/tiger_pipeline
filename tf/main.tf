terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.37.0"
    }
  }
  backend "s3" {
    bucket = "tiger-pipeline-tf-state"
    key    = "terraform.tfstate"
    region = "us-east-2"
  }
}

provider "aws" {
  region  = "us-east-2"
}

