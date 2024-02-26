resource "aws_instance" "Redhat" {
    ami                     = "ami-05a5bb48beb785bf1"
    instance_type           = "t2.micro"

    tags = {
        Name = "RedHat-server"
    }
}

resource "aws_instance" "Ubuntu" {
  ami                     = "ami-03f4878755434977f"
  instance_type           = "t2.micro"

  tags = {
    Name = "Ubuntu-server"
  }
}

resource "aws_vpc" "vpc" {
  cidr_block       = "172.31.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "VPC"
  }
}

resource "aws_s3_bucket" "Bucket" {
  bucket = "uhgdyuwfhwefbwyfgrf"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}