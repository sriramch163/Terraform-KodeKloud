resource "aws_iam_policy" "iampolicy_yousuf" {
  name        = "iampolicy_yousuf"
  description = "Read-only access to EC2 resources"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Action = [
          "ec2:Describe*"
        ]
        Resource = "*"
      }
    ]
  })

  tags = {
    Name = "iampolicy_yousuf"
  }
}