terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.48.0"
    }
  }
  backend "s3" {
    bucket = "daws78s-remote-state"        #change it to urs
    key    = "expense-for-loop"
    region = "us-east-1"
    dynamodb_table = "daws78s-locking"  #change it to urs
  }
}

#provide authentication here
provider "aws" {
  region = "us-east-1"
}