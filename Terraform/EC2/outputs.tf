output "public_address" {
  description = "Public IP address of the EC2 instance"
  value       = [for public_ip in aws_instance.VirtualMachine : public_ip.public_ip]
}
output "private_address" {
  description = "Private IP address of the EC2 instance"
  value       = [for private_ip in aws_instance.VirtualMachine : private_ip.private_ip]
}
