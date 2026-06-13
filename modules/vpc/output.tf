output "public_subnet_ids" {
  value = values(aws_subnet.public_subnet)[*].id
}

output "private_subnet_ids" {
  value = values(aws_subnet.private_subnet)[*].id
}

output "vpc_id" {
  value = aws_vpc.k_vpc.id
}

output "vpc_cidr" {
  value = aws_vpc.k_vpc.cidr_block
}