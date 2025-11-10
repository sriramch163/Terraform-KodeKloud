resource "aws_iam_user" "mark" {
  name = "iamuser_mark"
  
  tags = {
    name = "iamuser_mark"
  }
}