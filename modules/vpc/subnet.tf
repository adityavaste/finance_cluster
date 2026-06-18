resource "aws_subnet" "public_subnet" {
  for_each = {
    for idx, cidr in var.public_subnet_cidr :
    cidr => {
      cidr = cidr
      az   = var.availability_zones[idx]
    }
  }

  vpc_id                  = aws_vpc.k_vpc.id
  cidr_block              = each.value.cidr
  availability_zone       = each.value.az
  map_public_ip_on_launch = true

  tags = {
    Name                                      = "public-subnet"
    "kubernetes.io/role/elb"                  = "1"
    "kubernetes.io/cluster/k-dev-eks-cluster" = "owned"
  }
}

resource "aws_subnet" "private_subnet" {
  for_each = {
    for idx, cidr in var.private_subnet_cidr :
    cidr => {
      cidr = cidr
      az   = var.availability_zones[idx]
    }
  }

  vpc_id                  = aws_vpc.k_vpc.id
  cidr_block              = each.value.cidr
  availability_zone       = each.value.az
  map_public_ip_on_launch = false

  tags = {
    Name                                      = "private-subnet"
    "kubernetes.io/role/internal-elb"         = "1"
    "kubernetes.io/cluster/k-dev-eks-cluster" = "owned"
  }
}
