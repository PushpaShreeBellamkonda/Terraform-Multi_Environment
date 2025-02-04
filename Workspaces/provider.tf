terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

# here the terraform.tfvar file will be stored in s3 bucket(Remote state)
# s3==> for Remote state
# Dynamodb table for Locking mechanism

  backend "s3" {
    bucket = "mybucket"
    key = "remote-state-demo-5" #our wish
    region = "us-east-1"
    dynamodb_table = "table_name"
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

# terraform init
# terraform init -reconfigure
# terraform wokspace (to know about workspaces)
# terraform workspace new dev(name)  (to create new workspace)
# terraform wokspace list (to know list of workspaces)
# terraform workspace select dev(name) (to switch to a certain workspace)
