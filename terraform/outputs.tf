output "ec2_public_ip" {
  description = "EC2 public IP address"
  value       = aws_instance.web_server.public_ip
}
