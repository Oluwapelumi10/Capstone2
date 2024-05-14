// i created an Internet Gateway and attached it to the VPC
resource "aws_internet_gateway" "my-first-igw" {
  vpc_id = aws_vpc.main_vpc.id

  tags = {
    Name = "my_first_igw"
  }
}
