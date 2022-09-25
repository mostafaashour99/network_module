resource "aws_route_table" "route1" {
 vpc_id = aws_vpc.main.id
  route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.igw.id
    }
    tags = {
      "name" = "public route table"
    }
}
resource "aws_route_table_association" "public1" {
  subnet_id      = aws_subnet.public_subnet_1.id
  route_table_id = aws_route_table.route1.id
}
resource "aws_route_table_association" "b" {
  subnet_id      = aws_subnet.public_subnet_2.id
  route_table_id = aws_route_table.route1.id
}

# resource "aws_route_table_association" "c" {ye
#   gateway_id     = aws_internet_gateway.igw.id
#   route_table_id = aws_route_table.route1.id
# }