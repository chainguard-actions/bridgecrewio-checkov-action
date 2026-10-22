resource "aws_security_group" "private_ssh" {
  name        = "private-ssh"
  description = "Allows SSH only from internal network"

  ingress {
    description = "ssh"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/8"]
  }
}
