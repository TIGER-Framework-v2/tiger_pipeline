
provider "aws" {
  region  = "us-east-2"
}

terraform {
  backend "s3" {
    bucket = "tiger-pipeline-tf-state"
    key    = "terraform.tfstate"
    region = "us-east-2"
  }
}


resource "aws_s3_bucket" "tf_test_bucket" {
  bucket = var.test_bucket_name

  tags = {
    Name        = "tf_test_bucket"
    Environment = "Dev"
  }
}

#resource "aws_s3_bucket_acl" "tf_test_bucket_acl" {
#  bucket = aws_s3_bucket.tf_test_bucket.id
#  acl    = "private"
#}