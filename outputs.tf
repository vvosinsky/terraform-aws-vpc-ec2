#Global
output "region" {
  value = var.region
}
output "project-name" {
  value = var.Project-name
}

#Bastion Host
output "instance-type" {
  value = var.instance-type
}
output "bastion-host" {
  value = aws_instance.bastion.tags
}
output "bastion-host2" {
  value = aws_instance.bastion2.tags
}
output "private-host" {
  value = aws_instance.private.tags
}
output "private-host2" {
  value = aws_instance.private2.tags
}

