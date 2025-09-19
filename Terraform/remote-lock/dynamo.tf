resource "aws_dynamodb_table" "state-table" {
  name         = "state-table"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    Name = "state-table"

  }
}