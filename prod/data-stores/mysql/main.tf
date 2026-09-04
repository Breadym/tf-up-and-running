terraform {
  required_version = ">= 1.0.0, < 2.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }

  backend "s3" {
    bucket         = "a-really-unique-name-that-no-one-else-has-used-2"
    key            = "/terraform.tfstate"
    region         = "ap-southeast-2"
    dynamodb_table = "<YOUR DYNAMODB TABLE>"
    encrypt        = true
  }
}

provider "aws" {
  region = "ap-southeast-2"
}

resource "aws_db_instance" "example" {
  identifier_prefix   = "terraform-up-and-running"
  engine              = "mysql"
  allocated_storage   = 10
  instance_class      = "db.t2.micro"
  db_name             = var.db_name
  username            = var.db_username
  password            = var.db_password
  skip_final_snapshot = true
}