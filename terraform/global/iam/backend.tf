provider "aws" {
  region = "eu-west-1"
}

terraform {
  required_version = ">= 0.11.14"

  backend "s3" {
    bucket         = "infrastructure-engineer-cie-tfstate"
    key            = "global/iam/terraform.tfstate"
    region         = "eu-west-1"
    dynamodb_table = "cie-terraform-statelock"
  }
}
