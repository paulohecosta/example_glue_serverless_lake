resource "aws_s3_bucket" "stage_bucket" {
  bucket = "${local.account_id}-glue-lake-stage-${var.ENVIRONMENT}"
  acl    = "private"

  versioning {
    enabled = true
  }

  lifecycle_rule {
    enabled = true

    noncurrent_version_transition {
      days          = 30
      storage_class = "STANDARD_IA"
    }

    noncurrent_version_transition {
      days          = 60
      storage_class = "GLACIER"
    }

    noncurrent_version_expiration {
      days = 90
    }
  }

  tags = {
    Name        = "stage_bucket"
    Product     = "bucket"
    Environment = var.ENVIRONMENT
  }
}