terraform {
  required_version = ">=0.12.13"
  backend "s3" {
    bucket         = "aaltopiiri-terraform-bucket"
    key            = "terraform.tfstate"
    region         = "us-west-2"
    dynamodb_table = "aws-locks"
    encrypt        = true
  }
}