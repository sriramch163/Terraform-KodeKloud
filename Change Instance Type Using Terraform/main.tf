# Provision EC2 instance
resource "aws_instance" "ec2" {
  ami           = "ami-0c101f26f147fa7fd"
  instance_type = "t2.nano"
  subnet_id     = ""
  vpc_security_group_ids = [
    "sg-b64c2bba4be71aecb"
  ]

  tags = {
    Name = "xfusion-ec2"
  }
}