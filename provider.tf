provider "aws" {
  region = "us-east-1"
}
terraform {
  required_providers {
    consul = ">= 2.4.0"
  }
}


