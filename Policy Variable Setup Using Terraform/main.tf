provider "aws" {
  region = "us-east-1"
}

resource "aws_iam_policy" "main" {
  name        = var.KKE_iampolicy
  description = "A custom IAM policy created using Terraform"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "ec2:Describe*",
          "s3:ListAllMyBuckets"
        ]
        Effect   = "Allow"
        Resource = "*"
      }
    ]
  })

  tags = {
    Name = var.KKE_iampolicy
  }
}
