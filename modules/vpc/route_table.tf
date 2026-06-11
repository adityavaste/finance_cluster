resource "aws_route_table" "k_public_route_table" {
  vpc_id = aws_vpc.k_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.k_igw.id
  }



  tags = {
    Name = "routetable"
  }
}

resource "aws_route_table_association" "k_public_route_table_association" {
  for_each       = aws_subnet.public_subnet
  subnet_id      = each.value.id
  route_table_id = aws_route_table.k_public_route_table.id
}


resource "aws_route_table" "k_private_route_table" {
  vpc_id = aws_vpc.k_vpc.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.k_nat.id
  }

    tags = {
        Name = "private-routetable"
    }
}

resource "aws_route_table_association" "k_private_route_table_association" {
  for_each       = aws_subnet.private_subnet
  subnet_id      = each.value.id
  route_table_id = aws_route_table.k_private_route_table.id
}