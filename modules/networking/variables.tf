variable "vpc_id" {
    description = "VPC-id"
    type = string
  
}

variable "igw_name" {
    description = "internet gateway name"
    type = string
    default = "WP-IG"
  
}

variable "rt" {
    description = "route table name"
    type = string
    default = "WP-rt"
  
}

variable "subnet_id" {
    description = "subnet id"
    type = string
  
}
