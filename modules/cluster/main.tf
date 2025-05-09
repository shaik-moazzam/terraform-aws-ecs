resource "aws_security_group" "restricted_ssh" {
  name        = "restricted_ssh"
  description = "Allow inbound SSH traffic from the private IP range"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["192.0.2.0/24"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}