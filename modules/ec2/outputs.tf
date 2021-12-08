#Bastion Host
output "bastion-server-ip" {
  value = aws_instance.bastion.public_ip
}
output "bastion-server-ip2" {
  value = aws_instance.bastion2.public_ip
}
output "private-server-ip" {
  value = aws_instance.bastion2.private_ip
}
output "private-server-ip2" {
  value = aws_instance.bastion2.private_ip
}