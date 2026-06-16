variable "aws_region" {
  type = string
}

variable "vpc_name" {
  type = string
}

variable "vpc_cidr" {
  type = string
}

variable "availability_zones" {
  type = list(string)
}

variable "public_subnet_cidr" {
  type = list(string)
}

variable "private_subnet_cidr" {
  type = list(string)
}


variable "max_size" {
  type = number
}

variable "min_size" {
  type = number
}

variable "max_unavailable" {
  type = number
}

variable "desired_size" {
  type = number
}

variable "k_dev_eks_cluster" {
  type = string
}
