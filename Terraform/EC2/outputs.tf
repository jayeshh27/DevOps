output "public_address" {
    description = "Public IP address of the EC2 instance"
    value       = aws_instance.VirtualMachine.public_ip
  
}
output "private_address" {
    description = "Private IP address of the EC2 instance"
    value       = aws_instance.VirtualMachine.private_ip
}
output "FQDN" {
    description = "Public FQDN of the EC2 instance"
    value       = aws_instance.VirtualMachine.public_dns
  
}