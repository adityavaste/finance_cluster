variable "k_cluster_name" {
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