provider "aws" {
  region = "us-east-1"
  access_key = "****"
  secret_key = "***"
  token = "***"
}

resource "aws_instance" "mylinuxvm2" {
  ami = "ami-0b0af3577fe5e3532"
  instance_type = "t2.micro"
  key_name = "key27thMar22"
  tags = {
    Name = "Terraform_instance_simplilearn"
  }
}

resource "aws_instance" "mylinuxvm3" {
  ami = "ami-0b0af3577fe5e3532"
  instance_type = "t2.micro"
  key_name = "key27thMar22"
  tags = {
    Name = "Terraform_instance_simplilearn"
  }
}
