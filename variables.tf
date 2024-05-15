variable "vpc_cidr_block" {
  type    = string
  default = "192.168.0.0/16"
}

variable "ami" {
  type    = string
  default = "ami-019a292cfb114a776"
}

variable "aws_region" {
  type    = string
  default = "eu-west-2"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "public_subnet_cidr_block" {
  type    = string
  default = "192.168.1.0/24"
}

variable "private_subnet_cidr_block" {
  type    = string
  default = "192.168.2.0/24"
}

variable "destination_cidr_block" {
  type    = string
  default = "0.0.0.0/0"
}

variable "route_cidr_block" {
  type    = string
  default = "0.0.0.0/0"
}

variable "availability_zone_1" {
  type    = string
  default = "eu-west-2a"
}

variable "availability_zone_2" {
  type    = string
  default = "eu-west-2b"
}

variable "domain" {
  type    = string
  default = "vpc"
}

variable "bigg_bucket" {
  type    = string
  default = "my-unique-bucket-2030"
}

variable "key_name" {
  type    = string
  default = "foodkey"
}


variable "subnet_id" {
  type = string
  default = "aws_subnet.my_public_subnet.id"
}

variable "associate_public_ip_address" {
  type = bool
  default = true
}

variable "instance_name" {
  type = string
  default = "test-instance"
}

variable "instance_tenancy" {
  type = string
  default = "default"
}

variable "Name" {
  type    = string
  default = "my_first_vpc"
}
