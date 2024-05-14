// i created a NAT gateway in the public subnet of the VPC and assigned it an EIP
resource "aws_eip" "nat" {
  domain = var.domain
}

resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.nat.id
  subnet_id     = aws_subnet.my_public_subnet.id
  tags = {
    Name = "nat_gateway"
  }
}
