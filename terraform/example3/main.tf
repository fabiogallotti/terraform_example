terraform {
  backend "s3" {
    bucket  = "terraform-up-and-running-state-fabiogallo"
    region  = "us-east-1"
    key     = "terraform.tfstate"
    encrypt = true
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "terraform_state" {
  bucket = "terraform-up-and-running-state-fabiogallo"

  force_destroy = true

  versioning {
      enabled = true
  }

  # lifecycle {
  #     prevent_destroy = true
  # }
}
