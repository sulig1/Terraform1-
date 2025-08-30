variable "ec2-ami" {
    description = "ec2 ami id"
    type = string
    default = "ami-0b016c703b95ecbe4"

}

variable "ec2-type" {
    description = "ec2 instance type"
    type = string
    default = "t2.micro"

}

variable "subnet_id" {
    description = "public subnet id"
    type = string

}

variable "sg-id" {
  description = "sg-ID"
  type = string

}

variable "key-pair" {
    description = "key-pair name"
    type = string
    default = "Terraform-kp"
  
}

variable "ec2-name" {
    description = "ec2 instance name"
    type = string
    default = "Wordpress-EC2"
  
}