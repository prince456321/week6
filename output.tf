output "mon_public_ip" {
  value = aws_instance.server1.public_ip
}

output "linux_username" {
  value = "ec2-user"
}

output "key_name" {
  value = aws_instance.server1.key_name
}
