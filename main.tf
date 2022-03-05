provider "aws" {
  region = "us-east-1"
  profile = "default"
}

resource "aws_vpc" "my-vpc" {
  cidr_block       = "10.0.0.0/16"
  
  tags = {
    Name = "Freestyle-vpc"
  }
}

module "for-vpc" {
  source = "./Modules-Vpc"
}

module "for-security-goup" {
  source = "./Module-Sg"
}



resource "aws_instance" "Terraform" {
  ami         = "${var.my-ami}"
  instance_type = "t2.micro"
  key_name = "Myawskeys"
  count = 1
  
 tags = {
    Name = "Ojah-Instance"
  }
}