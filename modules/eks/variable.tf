variable "k_dev_eks_cluster" {
  type = string
}


variable "max_size" {
  type = number
}

variable "min_size" {
  type = number
}

variable "desired_size" {
  type = number
}

variable "max_unavailable" {
  type = number
}

variable "subnet_ids" {
  type = list(string)
}