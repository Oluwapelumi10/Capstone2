resource "aws_route_table" "private" {
  vpc_id = var.vpc_id

  tags = {
    Name = "My First Private Route Table"
  }

}

resource "aws_route" "internet-route" {
  route_table_id         = aws_route_table.private.id
  destination_cidr_block = var.route_cidr_block
  gateway_id             = var.nat_gateway_id
}

resource "aws_route_table_association" "private" {
  subnet_id      = var.private_subnet_id
  route_table_id = aws_route_table.private.id
}