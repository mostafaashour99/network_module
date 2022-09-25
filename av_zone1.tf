
resource "aws_subnet" "public_subnet_1"{
  vpc_id     = aws_vpc.main.id
  cidr_block = var.public_subnet_cidr
   availability_zone = var.availability_zone
   tags = {
    Name = "public_subnet_1"
  }
}
resource "aws_subnet" "private_subnet_1"{
  vpc_id     = aws_vpc.main.id
  cidr_block = var.private_subnet_cidr
  availability_zone = var.availability_zone
    tags = {
        Name = "private_subnet_1"
    }
}