output "ec2_instance_id" {
  value = aws_instance.instance_name.id
}
output "ec2_instance_public_ip" {
  value = aws_instance.instance_name.public_ip
}