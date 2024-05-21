output "nat_gateway_id" {
  value = aws_nat_gateway.nat.id
}

output "aws_eip" {
  value = aws_eip.nat.id
}