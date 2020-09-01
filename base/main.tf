provider "aws" {
  region  = var.region
  profile = var.profile
}

terraform {
  backend "s3" {
    bucket         = "aaltopiiri-terraform-bucket"
    key            = "terraform.tfstate"
    region         = "us-west-2"
    dynamodb_table = "aws-locks"
    encrypt        = true
  }
}
