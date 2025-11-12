resource "tls_private_key" "nautilus_key" {
  algorithm = "RSA"
  rsa_bits  = 2048
}


resource "aws_key_pair" "nautilus_kp" {
  key_name   = "nautilus-kp-t1q2"
  public_key = tls_private_key.nautilus_key.public_key_openssh
}


resource "local_file" "private_key" {
  content          = tls_private_key.nautilus_key.private_key_pem
  filename         = "/home/bob/nautilus-kp-t1q2.pem"
  file_permission  = "0600"
}


resource "aws_instance" "nautilus_ec2" {
  ami           = "ami-0c101f26f147fa7fd"
  instance_type = "t2.micro"
  key_name      = aws_key_pair.nautilus_kp.key_name

  tags = {
    Name = "nautilus-ec2-t1q2"
  }
}