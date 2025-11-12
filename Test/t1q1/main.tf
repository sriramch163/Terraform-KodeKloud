# main.tf

provider "aws" {
  region = "us-east-1"  # You can adjust region if needed
}

# Generate RSA private key
resource "tls_private_key" "rsa_key" {
  algorithm = "RSA"
  rsa_bits  = 2048
}

# Create AWS key pair using the generated public key
resource "aws_key_pair" "nautilus_kp" {
  key_name   = "nautilus-kp-t1q1"
  public_key = tls_private_key.rsa_key.public_key_openssh
}

# Save private key locally under /home/bob
resource "local_file" "private_key" {
  content          = tls_private_key.rsa_key.private_key_pem
  filename         = "/home/bob/nautilus-kp-t1q1.pem"
  file_permission  = "0600"
}

output "key_name" {
  value = aws_key_pair.nautilus_kp.key_name
}
