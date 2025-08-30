output "ec2_public_ip" {
  description = "ec2 public ip"
  value = aws_instance.Wordpress-EC2.public_ip
}