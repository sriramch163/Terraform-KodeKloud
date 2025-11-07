resource "aws_vpc" "nautilus_vpc" {
  cidr_block = "192.168.0.0/24"

  tags = {
    Name = "nautilus-vpc"
  }
}