resource "aws_internet_gateway" "my-first-igw" {
  vpc_id = var.vpc_id

  tags = {
    Name = "my_first_igw"
  }
}
