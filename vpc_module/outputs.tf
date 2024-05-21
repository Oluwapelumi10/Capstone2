output "vpc_id" {
  value = aws_vpc.main_vpc.id
}

output "main_route_table_id" {
  value = aws_vpc.main_vpc.main_route_table_id
}