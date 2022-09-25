resource "aws_internet_gateway" "igw" {
  vpc_id = "${aws_vpc.main.id}"

  tags = {
    Name = "lab 1"
  }
}
resource "aws_eip" "lb" {
  vpc      = true
}
resource "aws_nat_gateway" "nat_gw" {
  allocation_id = aws_eip.lb.id
  subnet_id     = aws_subnet.public_subnet_1.id
  depends_on = [aws_internet_gateway.igw]
  tags = {
    "name" = "lab 1"
  }
}