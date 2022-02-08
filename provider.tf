provider "aws" {
  version = "~> 2.20.0"

  region = "us-east-1"
}

provider "aws" {
  alias = "prod"
  region = "us-east-2"
}

terraform {
  required_providers {
    consul = ">= 2.4.0"
  }
}


