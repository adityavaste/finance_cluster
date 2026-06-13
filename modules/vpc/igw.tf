resource "aws_internet_gateway" "k_igw" {
  vpc_id = aws_vpc.k_vpc.id

  tags = merge(local.common_tags, {
    Name = "main-igw"
  })
}
