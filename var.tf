variable "cidr_block" {
  description = "This is cidr block vpc"
  type = string
}

variable "vpc_name" {
    description = "This is VPC name "
    type = string  
}
variable "availability_zone" {
    description = "This is availability zone"
    type =  string
}

variable "aws_region" {
    description = "This is region for aws"
    type =  string
}

variable "aws_profile" {
    description = "This is profile for aws"
    type =  string
}

variable "instance_ami" {
    description = "This is ami host"
    type =  string
}

variable "instance_type" {
    description = "This is instance type"
    type =  string
}

variable "instance_key" {
    description = "This is key for instance"
    type =  string
}

variable "instance_name" {
    description = "This is instance name"
    type =  string
}