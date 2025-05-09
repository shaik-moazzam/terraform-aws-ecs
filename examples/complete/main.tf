ingress_ssh = {
  type        = "ingress"
  from_port   = 22
  to_port     = 22
  protocol    = "tcp"
  cidr_blocks = ["your-specific-ip-range"]
  description = "SSH port"
}