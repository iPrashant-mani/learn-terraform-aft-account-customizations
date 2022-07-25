#data "aws_caller_identity" "current" {}

#resource "aws_s3_bucket" "sandbox_bucket" {
 # bucket = "aft-sandbox-${data.aws_caller_identity.current.account_id}"
  #acl    = "private"
#}


resource "aws_s3_bucket" "AFT" {
  bucket = "my-aft-test-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "AFT"
  }
}

resource "aws_s3_bucket_acl" "AFT-bucket" {
  bucket = aws_s3_bucket.AFT.id
  acl    = "private"
}