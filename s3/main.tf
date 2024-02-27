
resource "aws_instance" "abhishek" {
  instance_type = "t2.micro"
  ami = "ami-03f4878755434977f" # change this
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = "backend-s3-demo-1111" # change this
}


