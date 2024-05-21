resource "aws_nat_gateway" "nat" {
  allocation_id = var.allocation_id
  subnet_id     = var.subnet_id
  tags = {
    Name = "nat_gateway"
  }
}

resource "aws_eip" "nat" {
  domain = "vpc"
}