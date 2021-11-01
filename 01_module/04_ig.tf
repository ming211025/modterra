resource "aws_internet_gateway" "kmj_ig" {
    vpc_id = aws_vpc.kmj_vpc.id

    tags = {
        Name = "kmj-ig"
    }
}