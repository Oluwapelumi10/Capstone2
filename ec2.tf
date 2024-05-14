resource "aws_instance" "instance_name" {
  ami           = var.ami
  instance_type = var.instance_type

  key_name                    = var.key_name
  vpc_security_group_ids      = [aws_security_group.web_sg.id]
  subnet_id                   = aws_subnet.my_public_subnet.id
  associate_public_ip_address = var.associate_public_ip_address

  tags = {
    Name = var.instance_name
  }
}