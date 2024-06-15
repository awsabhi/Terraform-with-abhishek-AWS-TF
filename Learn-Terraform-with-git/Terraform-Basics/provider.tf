terraform {
  required_version = "~> 1.8"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.54.1"
    }
  }
}


provider "aws" {
  region  = "us-east-1"
  profile = "default"
}  
/*
provider "aws" {
  region  = "us-east-1"
  profile = "default"
  alias = "us-west-1"

}
*/