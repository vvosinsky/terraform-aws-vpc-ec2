#VPC
output "vpc" {
  value = aws_vpc.vpc.id
}
output "public-subnet-a" {
  value = aws_subnet.public.id
}
output "private-subnet-a" {
  value = aws_subnet.private.id
}

#VPC 2
output "vpc2" {
  value = aws_vpc.vpc2.id
}
output "public-subnet-a-2" {
  value = aws_subnet.public2.id
}
output "private-subnet-a-2" {
  value = aws_subnet.private2.id
}

#Security Group
output "security-group" {
  value = aws_security_group.bastion.id
}
output "security-group2" {
  value = aws_security_group.bastion2.id
}

