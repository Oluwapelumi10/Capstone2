resource "aws_instance" "instance_name" {
  ami           = var.ami
  instance_type = var.instance_type

  key_name                    = var.key_name
  vpc_security_group_ids      = var.vpc_security_group_ids
  subnet_id                   = var.subnet_id
  associate_public_ip_address = var.associate_public_ip_address

  tags = {
    Name = var.Name
  }
}