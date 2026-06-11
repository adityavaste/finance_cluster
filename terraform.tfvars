aws_region = "ap-south-1"

vpc_name = "k_dev-vpc"

vpc_cidr = "10.0.0.0/16"

availability_zones = [

"ap-south-1a",

"ap-south-1b"

]

public_subnet_cidr = [

"10.0.1.0/24",

"10.0.2.0/24"

]

private_subnet_cidr = [

"10.0.11.0/24",

"10.0.12.0/24"

]

k_cluster_name = "k-dev-eks-cluster"

desired_size = 1

max_size = 2

min_size = 1

max_unavailable = 1