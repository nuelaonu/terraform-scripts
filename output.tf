output "Ec2_public_IP" {
  value = aws_instance.ec2_public[*].public_ip
  description = "Public IP of instances"
}
