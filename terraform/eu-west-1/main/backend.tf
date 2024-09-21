provider "aws" {
  region = "eu-west-1"
}

terraform {
  required_version = ">= 0.11.10"

  backend "s3" {
    bucket         = "infrastructure-engineer-cie-tfstate"
    key            = "eu-west-1/main/terraform.tfstate"
    region         = "eu-west-1"
    dynamodb_table = "cie-terraform-statelock"
  }
}
