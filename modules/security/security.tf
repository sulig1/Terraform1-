#Create security group for Wordpress ec2
resource "aws_security_group" "WP-sg" {
  name        = "SG for WP-EC2"
  description = "Security Group for Wordpress EC2"
  vpc_id      = var.vpc_id

  # Ingress rules (allow inbound traffic)
  ingress {
    description      = "Allow HTTP traffic"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"] # Allow traffic from all IPs
  }

  ingress {
    description      = "Custom for WordPress"
    from_port        = 8080
    to_port          = 8080
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"] # Allow traffic from all IPs
  }

  ingress {
    description      = "Allow SSH traffic"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"] # Allows traffic from all ssh
  }

  # Egress rules (allow all outbound traffic)
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1" # Allow all protocols
    cidr_blocks      = ["0.0.0.0/0"]
  }


  tags = {
    Name = var.SG-name
  }
}
