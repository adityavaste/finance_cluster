resource "aws_eks_cluster" "k_dev_eks_cluster" {
  name = var.k_dev_eks_cluster

  access_config {
    authentication_mode = "API"
  }

  role_arn = aws_iam_role.iam_eks_role.arn
  version = "1.33"

  vpc_config {
    subnet_ids =  var.subnet_ids
    
  }

  # Ensure that IAM Role permissions are created before and deleted
  # after EKS Cluster handling. Otherwise, EKS will not be able to
  # properly delete EKS managed EC2 infrastructure such as Security Groups.
  depends_on = [
  aws_iam_role_policy_attachment.cluster_policy_attachment
]
}