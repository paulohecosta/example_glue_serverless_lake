data "aws_caller_identity" "current" {}
locals {
    account_id = data.aws_caller_identity.current.account_id
}
provider "aws" {
    access_key = "${var.AWS_ACCESS_KEY}"
    secret_key = "${var.AWS_SECRET_KEY}"
    region = "${var.AWS_REGION}"
}