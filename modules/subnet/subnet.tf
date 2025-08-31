resource "aws_subnet" "PublicSubnet" {
  availability_zone = var.subnet_AZ
  vpc_id = var.vpc_id
  cidr_block = var.subnet_cidr


  tags = {
    Name = var.SubnetName
  }
}