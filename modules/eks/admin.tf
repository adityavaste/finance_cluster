resource "aws_eks_access_entry" "admin_user" {
  cluster_name  = aws_eks_cluster.k_cluster.name
  principal_arn = "arn:aws:iam::900840136675:user/terraform_usre"
  type          = "STANDARD"
}

resource "aws_eks_access_policy_association" "admin_user" {
  cluster_name  = aws_eks_cluster.k_cluster.name
  principal_arn = "arn:aws:iam::900840136675:user/terraform_usre"

  policy_arn = "arn:aws:eks::aws:cluster-access-policy/AmazonEKSClusterAdminPolicy"

  access_scope {
    type = "cluster"
  }
}