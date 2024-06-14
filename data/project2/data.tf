data "terraform_remote_state" "bucket" {
  backend = "s3"
  config = {
    bucket = "dor12-aleksander-radziszewski"
    key    = "data.tfstate"
    region = "eu-west-1"
  }
}