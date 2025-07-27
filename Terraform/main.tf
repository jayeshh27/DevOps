terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.3.0"
    }
  }
   required_version = ">= 1.2.0"
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "appserver" {
  ami = "ami-020cba7c55df1f615"
  instance_type = "t2.micro"
  tags = {
    Name = "Terraform-Demo"
  }
}