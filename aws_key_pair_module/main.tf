resource "tls_private_key" "rsa" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "pub-key" {
  key_name   = "foodkey"
  public_key = tls_private_key.rsa.public_key_openssh
}

resource "local_file" "public_key" {
  content  = tls_private_key.rsa.public_key_openssh
  filename = "public_key.pem"
}

resource "local_file" "private_key" {
  content  = tls_private_key.rsa.private_key_pem
  filename = "lumikey"
}