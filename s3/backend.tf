#create S3 bucket
resource "aws_s3_bucket" "mybucket" {
    bucket = "aasdfghjkkkkd"
    versioning {
        enabled = true
    }
    server_side_encryption_configuration {
        rule {
          apply_server_side_encryption_by_default {
            sse_algorithm = "AES256"
          }
        }
    }
}
#create dynamodb

resource "aws_dynamodb_table" "ststelock" {
    name = "state-lock"
    billing_mode = "PAY-PER-REQUEST"
    hash_key = "LockID"

    attribute {
      name = "LockID"
      type = "S"
    }
}