resource "aws_eip" "k_eip" {
  domain = "vpc"

  tags = merge(local.common_tags)

}