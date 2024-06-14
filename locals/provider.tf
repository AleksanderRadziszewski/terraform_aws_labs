provider "aws" {
  region = "eu-west-1"
}

terraform {
  backend "s3" {
    encrypt = true
    region  = "eu-west-1"
    bucket  = "dor12-aleksander-radziszewski-state-bucket"
    key     = "locals-example.tfstate"
  }
}