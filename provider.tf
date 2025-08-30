terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.10.0"
    }
  }
}

provider "aws" {
  region     = "us-east-2"
  access_key = "AKIA4TRN2GXFN2AK24IS"
  secret_key = "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"
}

