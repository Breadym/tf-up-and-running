provider "aws" {
  region = "ap-southeast-2"
}

resource "aws_s3_bucket" "terraform_state" {
  bucket = "a-really-unique-name-that-no-one-else-has-used-2"

  lifecycle {
    prevent_destroy = true
  }
}

resource "aws_s3_bucket_versioning" "terraform_state" {
  bucket = aws_s3_bucket.terraform_state.id

  versioning_configuration {
    status = "Enabled"
  }
}

terraform {
  backend "s3" {
    bucket  = "a-really-unique-name-that-no-one-else-has-used-2"
    key     = "global/s3/terraform.tfstate"
    region  = "ap-southeast-2"
    encrypt = true
  }
}