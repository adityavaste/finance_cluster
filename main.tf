module "vpc" {
  source = "./modules/vpc"

  k_dev_eks_cluster   = var.k_dev_eks_cluster
  vpc_cidr            = var.vpc_cidr
  public_subnet_cidr  = var.public_subnet_cidr
  private_subnet_cidr = var.private_subnet_cidr
  availability_zones  = var.availability_zones
}

module "eks" {
  source = "./modules/eks"

  k_dev_eks_cluster = var.k_dev_eks_cluster


  subnet_ids = module.vpc.private_subnet_ids

  max_size        = var.max_size
  min_size        = var.min_size
  desired_size    = var.desired_size
  max_unavailable = var.max_unavailable
}
