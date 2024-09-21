provider "aws" {
  region = "eu-west-1"
}

terraform {
  required_version = ">= 0.11.14"

  backend "s3" {
    bucket         = "infrastructure-engineer-cie-tfstate"
    key            = "eu-west-1/ecs/app/terraform.tfstate"
    region         = "eu-west-1"
    dynamodb_table = "cie-terraform-statelock"
  }
}

