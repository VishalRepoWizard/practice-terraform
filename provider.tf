terraform {
  backend "s3" {
      bucket = "aasdfghjkkkkd"
      dynamodb_table = "state-lock"
      key = "global/mystate/terraform.tfstate"
      region = "ap-south-1"
      encrypt = true  
  }

  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.38.0"
    }
}
}

provider "aws" {
    region = "ap-south-1"
}