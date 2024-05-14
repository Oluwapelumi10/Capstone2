// Added a route to the main route table for the VPC that directs Internet traffic (0.0.0.0/0) to the IGW
resource "aws_route" "internet-route" {
  route_table_id         = aws_vpc.main_vpc.main_route_table_id
  destination_cidr_block = var.destination_cidr_block
  gateway_id             = aws_internet_gateway.my-first-igw.id
}

// i created a new route table within the VPC, added a route to it that directs Internet traffic (0.0.0.0/0) to the NAT gateway, and associated it with the private subnet
resource "aws_route_table" "private" {
  vpc_id = aws_vpc.main_vpc.id

  route {
    cidr_block     = var.route_cidr_block
    nat_gateway_id = aws_nat_gateway.nat.id
  }

  tags = {
    Name = "My First Private Route Table"
  }
}

resource "aws_route_table_association" "private" {
  subnet_id      = aws_subnet.my_private_subnet.id
  route_table_id = aws_route_table.private.id
}