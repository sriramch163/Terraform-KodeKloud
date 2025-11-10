# Provision EC2 instance
resource "aws_instance" "ec2" {
  ami           = "ami-0c101f26f147fa7fd"
  instance_type = "t2.micro"
  vpc_security_group_ids = [
    "sg-5381ab4ab8c78e4ee"
  ]

  tags = {
    Name = "nautilus-ec2"
  }
}


#create AMI from EC2 instance


resource "aws_ami_from_instance" "nautilus_ec2_ami" {
  name = "nautilus-ec2-ami"
  source_instance_id = aws_instance.ec2.id
}