#Terraform-backend
terraform {
  backend "s3" {
    bucket     = ""    #name of created bucket
    key        = "states/terraform.tfstate" #path to tfstate file
    region     = "eu-central-1" #region where will be bucket
    access_key = "" #access key for terraform-backend user in AWS
    secret_key = "" #secret key for terraform-backend user in AWS
  }
}
#Credentials
provider "aws" {
  access_key = var.access-key
  secret_key = var.secret-key
  region     = var.region
}
#-------------------------------------------------------

#VPC
module "vpc" {
  source = "./modules/vpc"

}
#-------------------------------------------------------

#Bastion Hosts
resource "aws_instance" "bastion" {
  ami             = var.ami-bastion
  instance_type   = var.instance-type
  subnet_id       = module.vpc.public-subnet-a
  security_groups = [module.vpc.security-group]
  key_name        = var.access-key-name
  tags            = {
    Name = "bastion host ${var.Project-name}"
  }
}

resource "aws_instance" "bastion2" {
  ami             = var.ami-bastion
  instance_type   = var.instance-type
  subnet_id       = module.vpc.public-subnet-a-2
  security_groups = [module.vpc.security-group2]
  key_name        = var.access-key-name
  tags            = {
    Name = "bastion host 2 ${var.Project-name}"
  }
}
#-------------------------------------------------------

# Private Servers
resource "aws_instance" "private" {
  ami             = var.ami-bastion
  instance_type   = var.instance-type
  subnet_id       = module.vpc.private-subnet-a
  security_groups = [module.vpc.security-group]
  key_name        = var.access-key-name
  tags            = {
    Name = "private host ${var.Project-name}"
  }
}

resource "aws_instance" "private2" {
  ami             = var.ami-bastion
  instance_type   = var.instance-type
  subnet_id       = module.vpc.private-subnet-a-2
  security_groups = [module.vpc.security-group2]
  key_name        = var.access-key-name
  tags            = {
    Name = "private host 2 ${var.Project-name}"
  }
}
#-------------------------------------------------------

