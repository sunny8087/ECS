data "terraform_remote_state" "network" {
  backend = "s3"

  config = {
    bucket = "infrastructure-engineer-cie-tfstate"
    key    = "eu-west-1/network/terraform.tfstate"
    region = "eu-west-1"
  }
}

data "terraform_remote_state" "lb" {
  backend = "s3"

  config = {
    bucket = "infrastructure-engineer-cie-tfstate"
    key    = "eu-west-1/lb/terraform.tfstate"
    region = "eu-west-1"
  }
}
