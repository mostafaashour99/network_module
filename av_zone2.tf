resource "aws_subnet" "public_subnet_2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.public_subnet_cidr2
   availability_zone = var.availability_zone2
  tags = {
    Name = "public_subnet_2"
  }
}
resource "aws_subnet" "private_subnet_2" {
  vpc_id     = "${aws_vpc.main.id}"
  cidr_block = var.private_subnet_cidr2
   availability_zone = var.availability_zone2
  tags = {
    Name = "private_subnet_2"
  }

}