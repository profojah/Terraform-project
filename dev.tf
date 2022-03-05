
#For provisioning different EC2 with different configuration

configuration = [
  {
    "application_name" : "Ojah-dev",
    "ami" : "ami-123456789",
    "no_of_instances" : "3",
    "instance_type" : "t2.micro",
    "subnet_id" : "subnet-0f4f294d8404946eb",
    "vpc_security_group_ids" : ["sg-0d15a4cac0567478c","sg-0d8749c35f7439f4e","sg-0d8749c35f7439f3e"]
  },
  {
    "application_name" : "Kenkool-dev",
    "ami" : "ami-07412448477447",
    "instance_type" : "t2.small",
    "no_of_instances" : "2"
    "subnet_id" : "subnet-0f4f294d8404946eb"
    "vpc_security_group_ids" : ["sg-0d15a4cac0567478c" "sg-0d8749c35f7439567e"]
  },
  {
    "application_name" : "OpsGrit-dev",
    "ami" : "ami-0747bdcabd34c712a",
    "instance_type" : "t3.micro",
    "no_of_instances" : "1"
    "subnet_id" : "subnet-0f4f294d8404946eb"
    "vpc_security_group_ids" : ["sg-0d15a4cac0567478c"]
  }
  
]