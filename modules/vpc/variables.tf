#General
variable "project-name" {
  description = "Name of Project"
}

#Credentials
variable "region" {
  description = "AWS Region"
  type = string
}

#VPC 1
variable "cidr-for-vpc" {
  description = "CIDR block for VPC"
}
variable "cidr-public-a" {
  description = "CIDR  Block for Public Subnet - A"
}
variable "cidr-private-a" {
  description = "CIDR Block for Public Subnet - A"
}
variable "availability-zone-a" {
  description = "Availability Zone - A"
}

#VPC 2
variable "cidr-for-vpc-2" {
  description = "CIDR block for VPC"
}
variable "cidr-public-a-2" {
  description = "CIDR  Block for Public Subnet - A"
}
variable "cidr-private-a-2" {
  description = "CIDR Block for Public Subnet - A"
}
variable "availability-zone-a-2" {
  description = "Availability Zone - A"
}

#Security Group
variable "anywhere-cidr" {
  description = "Allow connection from Anywhere"
  type        = string
}

