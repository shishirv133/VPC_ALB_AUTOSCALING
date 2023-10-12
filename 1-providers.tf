# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
  access_key = "AKIAQ634VJ2DSUHAN23R" #aws configure
  secret_key = "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"  ##aws configure
}


# Create remote state
terraform {
  backend "s3" {
    bucket = "remote-state-app"
    region = "us-east-1"
    key    = "web-auto/terraform.tfstate"
  }
}
