variable "vpc_id" {
    description = "VPC-id"
    type = string
  
}

variable "SG-name" {
    description = "security group name"
    type = string
    default = "WP-sg"
  
}