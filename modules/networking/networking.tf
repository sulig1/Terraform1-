resource "aws_internet_gateway" "gw" {
  vpc_id = var.vpc_id

  tags = {
    Name = var.igw_name
}

}


resource "aws_route_table" "WP-rt" {
  vpc_id = var.vpc_id


  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }

  tags = {
    Name = var.rt
  }
}


resource "aws_route_table_association" "RTA" {
  subnet_id      = var.subnet_id
  route_table_id = aws_route_table.WP-rt.id
}