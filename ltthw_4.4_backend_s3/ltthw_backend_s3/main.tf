terraform {
  required_version = ">= 0.14.0"
}
provider "aws" {
  region = "us-west-2"
  # region = var.region
}
resource "random_id" "bucket_name" {
  byte_length = 16
}
resource "aws_s3_bucket" "aws_s3_bucket_simple" {
  bucket        = "ltthw-${random_id.bucket_name.hex}"
  force_destroy = true
}