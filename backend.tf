terraform {
  backend "s3" {
    bucket = "my-unique-bucket-2030"
    key    = "terraform.tfstate"
    region = "eu-west-2"
  }
}