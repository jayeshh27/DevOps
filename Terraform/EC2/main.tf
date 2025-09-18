#key pair
resource "aws_key_pair" "jayesh" {
    key_name = var.key_name
    public_key = file(var.public_key_path)  
}
#vpc
#security group
resource "aws_default_vpc" "default" {
  tags = {
    Name = "Default VPC"
  }
}

resource "aws_default_security_group" "default" {
  vpc_id = aws_default_vpc.default.id

  ingress {
    protocol  = "tcp"
    self      = true
    from_port = 22
    to_port   = 22
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    protocol  = "tcp"
    self      = true
    from_port = 80
    to_port   = 80
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

#ec2
resource "aws_instance" "VirtualMachine" {

    key_name      = aws_key_pair.jayesh.key_name
    vpc_security_group_ids = [aws_default_security_group.default.id]
  ami = var.ami
  instance_type = var.instance_type
  user_data = file("install.sh")
  root_block_device {
    volume_size = var.volume_size
    volume_type = var.volume_type
    delete_on_termination = true
  }
  tags = {
    Name = var.ec2_name
  }
}