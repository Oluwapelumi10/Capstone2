resource "aws_s3_bucket" "bucket" {
  bucket        = var.bucket
  force_destroy = var.force_destroy


  tags = {
    Name        = var.Name
    Environment = var.Environment
  }
}