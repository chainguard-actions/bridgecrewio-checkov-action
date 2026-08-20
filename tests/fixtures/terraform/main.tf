# Simple Terraform fixture for Checkov testing
# This intentionally has some issues for Checkov to find

resource "aws_s3_bucket" "example" {
  bucket = "my-test-bucket"
}

resource "aws_security_group" "example" {
  name        = "example"
  description = "Example security group"

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
