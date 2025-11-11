variable "xfusion_secret" {
  default = {
    username = "admin"
    password = "Namin123"
  }

  type = map(string)
}

resource "aws_secretsmanager_secret" "xfusion_secret" {
  name = "xfusion-secret"
}

resource "aws_secretsmanager_secret_version" "xfusion_secret" {
  secret_id     = aws_secretsmanager_secret.xfusion_secret.id
  secret_string = jsonencode(var.xfusion_secret)
}