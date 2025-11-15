variable "instance_type" {
  description = "Type of EC2 instance"
  type        = string
  default     = "t2.micro"

}
variable "ami" {
  description = "AMI ID for the EC2 instance"
  type        = string
  default     = "ami-03aa99ddf5498ceb9"

}
variable "key_name" {
  description = "Key pair name for SSH access"
  type        = string
  default     = "jayesh"
}

variable "region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-west-2"

}
variable "volume_size" {
  description = "Size of the root EBS volume in GB"
  type        = number
  default     = 15

}
variable "env" {
  default = "Prod"
  type    = string

}
variable "volume_type" {
  description = "Type of the root EBS volume"
  type        = string
  default     = "gp3"

}
variable "ec2_name" {
  description = "Name tag for the EC2 instance"
  type        = string
  default     = "Terraform-EC2 "

}
variable "public_key_path" {
  description = "Path to the public key file for the key pair"
  type        = string
  default     = "jayesh.pub"

}
