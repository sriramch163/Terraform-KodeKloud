resource "aws_dynamodb_table" "nautilus_table" {
  name         = "nautilus-users-t3q1"
  billing_mode = "PAY_PER_REQUEST"

  hash_key = "nautilus_id_t3q1"

  attribute {
    name = "nautilus_id_t3q1"
    type = "S" # String
  }

  tags = {
    Name = "nautilus-users-t3q1"
  }
}
