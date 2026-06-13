resource "aws_nat_gateway" "k_nat" {
  allocation_id = aws_eip.k_eip.id
  subnet_id     = values(aws_subnet.public_subnet)[0].id

  tags = {
    Name = "nat"
  }

  depends_on = [aws_internet_gateway.k_igw]
}