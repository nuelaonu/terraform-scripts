variable "region" {
  type        = string
  description = "AWS region"
}
variable "vpc_cidr" {
  type        = string
  description = "CIDR block for VPC"
}
variable "public_subnet_cidr" {
  type        = list(string)
  description = "List Of Subnets CIDR range"
}
variable "ami" {
  type        = string
  description = "AMI ID of Ubuntu VM"
}
variable "instance_type" {
  type        = string
  description = "EC2 Instance type"
}
variable "user_name" {
  type        = string
  description = "UserName Displayed as Nginx output"
}
variable "az" {
  type        = list(string)
  description = "List of Availability zones equal to number of CIDR"
}
variable "instance_count" {
  type        = string
  description = "No of instances that needs to be created"
}