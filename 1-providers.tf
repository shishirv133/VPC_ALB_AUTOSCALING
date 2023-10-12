# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
  access_key = "" #aws configure
  secret_key = "+epMg1"  ##aws configure
}


# Create remote state
terraform {
  backend "s3" {
    bucket = "remote-state-app"
    region = "us-east-1"
    key    = "web-auto/terraform.tfstate"
  }
}
