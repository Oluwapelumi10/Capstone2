resource "aws_subnet" "my_public_subnet" {
  vpc_id            = aws_vpc.main_vpc.id
  cidr_block        = var.public_subnet_cidr_block
  availability_zone = var.availability_zone_1
}

resource "aws_subnet" "my_private_subnet" {
  vpc_id            = aws_vpc.main_vpc.id
  cidr_block        = var.private_subnet_cidr_block
  availability_zone = var.availability_zone_2
}