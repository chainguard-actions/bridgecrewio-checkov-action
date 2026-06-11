# Simple Terraform fixture for Checkov scanning tests
# This intentionally has some issues to trigger checks

resource "aws_s3_bucket" "example" {
  bucket = "my-test-bucket"
}

resource "aws_s3_bucket_versioning" "example" {
  bucket = aws_s3_bucket.example.id
  versioning_configuration {
    status = "Enabled"
  }
}
