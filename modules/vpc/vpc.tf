resource "aws_vpc" "custom-vpc" {
cidr_block = var.vpc_cidr_block
instance_tenancy = "default"

tags = {
Name = var.vpc_name
}
}








































# #Creating Public Subnet
# resource "aws_subnet" "PublicSubnet" {
#   availability_zone = var.subnet_AZ
#   vpc_id = local.vpc_id
#   cidr_block = var.subnet_cidr

#   tags = {
#     Name = local.PublicSubnet_name
#   }
# }



# #Creating Internet Gateway
# resource "aws_internet_gateway" "gw" {
#   vpc_id = local.vpc_id

#   tags = {
#     Name = local.IG_name
#   }
# }



# #Creating Route Table for Internet Access 
# resource "aws_route_table" "WP-rt" {
#   vpc_id = local.vpc_id

#   route {
#     cidr_block = "0.0.0.0/0"
#     gateway_id = aws_internet_gateway.gw.id
#   }

#   tags = {
#     Name = local.RouteTable_name
#   }
# }



# #Creating Route-Table Association for PublicSubnet
# resource "aws_route_table_association" "RTA" {
#   subnet_id      = aws_subnet.PublicSubnet.id
#   route_table_id = aws_route_table.WP-rt.id
# }