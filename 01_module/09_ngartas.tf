resource "aws_route_table_association" "kmj_ngart_a" {
    subnet_id       = aws_subnet.kmj_pria.id
    route_table_id  = aws_route_table.kmj_ngart_a.id
}

resource "aws_route_table_association" "kmj_ngart_c" {
    subnet_id       = aws_subnet.kmj_pric.id
    route_table_id  = aws_route_table.kmj_ngart_c.id
}

