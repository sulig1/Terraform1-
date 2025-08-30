variable "vpc_cidr_block" {
    description = "vpc cidr block"
    type = string
    default = "10.0.0.0/16"
  
}

variable "vpc_name" {
    description = "vpc name"
    type = string
    default = "WP-VPC"
  
}