resource "aws_route_table_association" "kmj_rtas_a" {
    subnet_id = aws_subnet.kmj_puba.id 
    route_table_id = aws_route_table.kmj_rt.id 
}

resource "aws_route_table_association" "kmj_rtas_c" {
    subnet_id = aws_subnet.kmj_pubc.id 
    route_table_id = aws_route_table.kmj_rt.id 
}

