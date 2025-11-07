
# Create the security group
resource "aws_security_group" "nautilus_sg" {
  name        = "nautilus-sg"
  description = "Security group for Nautilus App Servers"

  # Inbound rule for HTTP
  ingress {
    
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Inbound rule for SSH
  ingress {
    
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  
  
}
