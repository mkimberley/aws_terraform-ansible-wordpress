output "ip_jumpbox" {
  value = aws_eip.jumpbox.public_ip
}
output "ip_awx" {
  value = aws_eip.awx.public_ip
}

output "ip_public_web" {
  value = aws_eip.web-1.public_ip
}

output "ip_private_web" {
  value = aws_instance.web-1.private_ip
}

output "ip_private_db" {
  value = aws_instance.db-1.private_ip
}

