resource "aws_s3_bucket" "bigg_bucket" {
  bucket        = var.bigg_bucket
  force_destroy = true


  tags = {
    Name        = var.bigg_bucket
    Environment = "Dev"
  }
}

