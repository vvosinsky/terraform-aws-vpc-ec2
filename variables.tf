#General
variable "project-name" {
  description = "Name of Project"
  default = "AWS"
}

#Credentials
variable "region" {
  description = "AWS Region"
  type = string
  default = "eu-central-1"
}

#EC2 Key
variable "access-key-name" {
  description = "AWS ec2 key name: "
  default = "ec2-key"
}

#Bastion Host
variable "ami-bastion" {
  description = "AWS Instance ami: "
  default = "ami-0b1deee75235aa4bb"
}
variable "instance-type" {
  description = "AWS Instance type: "
  default = "t2.micro"
}

#VPC 1
variable "cidr-for-vpc" {
  description = "CIDR block for VPC"
  default = "10.0.0.0/16"
}
variable "cidr-public-a" {
  description = "CIDR  Block for Public Subnet - A"
  default = "10.0.1.0/24"
}
variable "cidr-private-a" {
  description = "CIDR Block for Public Subnet - A"
  default = "10.0.2.0/24"
}
variable "availability-zone-a" {
  description = "Availability Zone - A"
  default = "eu-central-1a"
}

#VPC 2
variable "cidr-for-vpc-2" {
  description = "CIDR block for VPC"
  default = "192.168.0.0/16"
}
variable "cidr-public-a-2" {
  description = "CIDR  Block for Public Subnet - A"
  default = "192.168.1.0/24"
}
variable "cidr-private-a-2" {
  description = "CIDR Block for Public Subnet - A"
  default     = "192.168.2.0/24"
}
variable "availability-zone-a-2" {
  description = "Availability Zone - A"
  default = "eu-central-1a"
}

#Security Group
variable "anywhere-cidr" {
  description = "Allow connection from Anywhere"
  type        = string
  default     = "0.0.0.0/0"
}

