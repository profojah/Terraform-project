provider "aws" {
  region  = "us-east-1"
  profile = "default"
}
resource "aws_instance" "Terraform_Docker" {
  ami           = "ami-1234567890"
  instance_type = "t2.micro"
  key_name      = "Myawskeys"
  count         = 1

  user_data = <<EOF
#! /bin/sh
sudo apt update
sudo apt install docker
sudo systemctl start docker
docker pull ngnix:alpine
docker run -d -it -p80:80 ngnix:alpine
EOF

  tags = {
    Name = "Terra_Docker"
  }
}
