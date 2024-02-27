terraform {
  backend "s3" {
    bucket         = "backend-s3-demo-1111" # change this
    key            = "vishal/terraform.tfstate"
    region         = "ap-south-1"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}