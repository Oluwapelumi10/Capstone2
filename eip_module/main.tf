resource "aws_eip" "nat" {
  domain = var.domain
}