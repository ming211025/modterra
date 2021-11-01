resource "aws_route_table" "kmj_ngart_a" {
  vpc_id = aws_vpc.kmj_vpc.id
  route {
      cidr_block = "0.0.0.0/0"
      gateway_id = aws_nat_gateway.kmj_nga_a.id
  }
  tags = {
      Name = "kmj_nga-rta"
  }
}

resource "aws_route_table" "kmj_ngart_c" {
  vpc_id = aws_vpc.kmj_vpc.id
  route {
      cidr_block = "0.0.0.0/0"
      gateway_id = aws_nat_gateway.kmj_nga_c.id
  }
  tags = {
      Name = "kmj_nga-rta"
  }
}