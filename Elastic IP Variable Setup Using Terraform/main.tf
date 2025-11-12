resource "aws_eip" "devops_eip" {
  tags = {
    Name = var.KKE_eip
  }
}