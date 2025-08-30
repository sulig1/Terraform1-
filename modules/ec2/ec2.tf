#Creating EC2 instance for Wordpress Deployment
resource "aws_instance" "Wordpress-EC2" {
  ami           = var.ec2-ami
  instance_type = var.ec2-type
  subnet_id = var.subnet_id
  vpc_security_group_ids = [var.sg-id]
  associate_public_ip_address = true
  key_name = var.key-pair
  user_data = file("wp.sh")
  tags = {
    Name = var.ec2-name
  }
}