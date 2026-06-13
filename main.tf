module "vpc" {
  source = "./modules/vpc"
k_cluster_name = var.k_cluster_name
  vpc_cidr            = var.vpc_cidr
  public_subnet_cidr  = var.public_subnet_cidr
  private_subnet_cidr = var.private_subnet_cidr
  availability_zones  = var.availability_zones

 
}

module "eks" {
  source = "./modules/eks"

  k_cluster_name = var.k_cluster_name

  subnet_ids = module.vpc.private_subnet_ids

  max_size         = var.max_size
  min_size         = var.min_size
  desired_size     = var.desired_size
  max_unavailable  = var.max_unavailable
}