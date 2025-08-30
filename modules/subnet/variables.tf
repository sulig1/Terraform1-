variable "subnet_AZ" {
  description = "Avaialability zone for public subnet"
  type = string
  default = "us-east-2a"
}

variable "vpc_id" {
    description = "VPC-id"
    type = string
    
  
}

variable "subnet_cidr" {
  description = "PublicSubnet cidr block"
  type = string
  default = "10.0.0.0/24"

}

variable "SubnetName" {
    description = "PublicSubnet name"
    type = string
    default = "PublicSubnet"
  
}