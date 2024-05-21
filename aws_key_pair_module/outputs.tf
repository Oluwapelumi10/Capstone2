output "public_key" {
  value = local_file.public_key.content
}

output "private_key" {
  value = local_file.private_key.content
}
