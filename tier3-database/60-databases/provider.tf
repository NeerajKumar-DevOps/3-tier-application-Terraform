terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.37.0"
    }
  }
  backend "s3" {
    bucket = "remote-state-spacex"
    key = "spacex_dev_databases"
    region = "us-east-1"
    use_lockfile = true
    encrypt = true
  }
}

provider "aws" {
    region = "us-east-1"
  # Configuration options
}