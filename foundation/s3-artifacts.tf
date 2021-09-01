resource "aws_s3_bucket" "artifacts_bucket" {
  bucket = "${local.account_id}-glue-lake-artifacts-${var.ENVIRONMENT}"
  acl    = "private"

  versioning {
    enabled = true
  }

  tags = {
    Name        = "artifacts_bucket"
    Product     = "bucket"
    Environment = var.ENVIRONMENT
  }
  
}