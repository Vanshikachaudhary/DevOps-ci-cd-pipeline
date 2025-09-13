output "ec2_public_ip" {
  description = "Public IP of EC2 instance"
  value       = aws_instance.devops_ec2.public_ip
}

output "ec2_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.devops_ec2.id
}
