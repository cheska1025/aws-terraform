resource "aws_s3_bucket" "test_bucket" {
  bucket = "cheska-terraform-test-bucket-001"
}

resource "aws_s3_bucket_acl" "test_bucket_acl" {
  bucket = aws_s3_bucket.test_bucket.id
  acl    = "private"
}
