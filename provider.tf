terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.48.0"
    }
  }


  backend "s3" {
    bucket       = "dns-remote-control-s3-buckets-dev"
    key          = "vpc-test.tfstate"
    region       = "us-east-1"
    encrypt      = true
    use_lockfile = true # native S3 locking — Terraform 1.10+, no DynamoDB needed
  }

}


# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}