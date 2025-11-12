resource "aws_secretsmanager_secret" "nautilus_secret" {
  name = "nautilus-secret-t3q3"
  description = "Stores admin credentials for Nautilus task t3q3"
}


resource "aws_secretsmanager_secret_version" "nautilus_secret_value" {
  secret_id     = aws_secretsmanager_secret.nautilus_secret.id
  secret_string = jsonencode({
    username = "admin"
    password = "Namin123"
  })
}

output "secret_name" {
  value = aws_secretsmanager_secret.nautilus_secret.name
}
