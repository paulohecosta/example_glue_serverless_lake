resource "aws_dynamodb_table" "lake_audit_table" {
  name           = "glue-lake-audit-${var.ENVIRONMENT}"
  billing_mode   = "PROVISIONED"
  read_capacity  = 1
  write_capacity = 1
  hash_key       = "audit_id"

  attribute {
    name = "audit_id"
    type = "S"
  }

  tags = {
    Name        = "lake_audit_table"
    Product     = "dynamodb"
    Environment = var.ENVIRONMENT
  }
}