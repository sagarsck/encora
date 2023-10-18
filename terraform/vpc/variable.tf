variable "vpc_cidr_block" {
    default = "144.0.0.0/16"
}
variable "my_custom_vpc" {
  default = "my_custom_vpc"
}
variable "public_subnet_1" {
    default = "144.0.0.0/24"
}
variable "public_subnet_1_name" {
  type = string
  default = "public-subnet-1"
}
variable "public_subnet_1_region" {
  default = "ap-south-1a"
}
variable "public_subnet_2" {
    default = "144.0.1.0/24"
}
variable "public_subnet_2_name" {
  type = string
  default = "public-subnet-2"
}
variable "public_subnet_2_region" {
  default = "ap-south-1b"
}
variable "IGname" {
    default = "customIG"
}
variable "routetable_name" {
    default = "public_route_table"
  
}
variable "private_subnet_1" {
  default = "144.0.3.0/24"
}
variable "private_subnet_1_region" {
  default = "ap-south-1a"
}
variable "private_subnet_1_name" {
  type = string
  default = "private-subnet-1"
}
variable "private_subnet_2" {
  default = "144.0.4.0/24"
}
variable "private_subnet_2_region" {
  default = "ap-south-1b"
}
variable "private_subnet_2_name" {
  type = string
  default = "private-subnet-2"
}