#General
variable "project-name" {
  description = "Name of Project"
}

#Credentials
variable "region" {
  description = "AWS Region"
  type = string
}

#Bastion Host
variable "ami-bastion" {
  description = "AWS Instance ami: "
}
variable "instance-type" {
  description = "AWS Instance type: "
}
variable "access-key-name" {
  description = "Name for instance access key"
}

#VPC
variable "public-subnet-a" {
  description = "Public Subnet A name"
}
variable "security-group" {
  description = "Security Group name for ec2 instance"
}
variable "private-subnet-a" {
  description = "Private Subnet A name"
}

#VPC 2
variable "public-subnet-a-2" {
  description = "Public Subnet A name"
}
variable "security-group2" {
  description = "Security Group name for ec2 instance"
}
variable "private-subnet-a-2" {
  description = "Private Subnet A name"
}