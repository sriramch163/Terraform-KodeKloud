resource "aws_iam_policy" "nautilus_policy" {
  name        = var.KKE_iampolicy
  description = "IAM policy created for Nautilus DevOps task t2q4"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action   = ["ec2:Describe*", "s3:ListAllMyBuckets"]
        Effect   = "Allow"
        Resource = "*"
      }
    ]
  })
}