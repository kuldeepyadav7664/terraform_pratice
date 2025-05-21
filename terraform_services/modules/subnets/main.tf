resource "aws_subnet" "public" {
  vpc_id            = var.vpc_id
  cidr_block        = var.public_subnet_cidr
  availability_zone = var.azs[0]
}

resource "aws_subnet" "private" {
  vpc_id            = var.vpc_id
  cidr_block        = var.private_subnet_cidr
  availability_zone = var.azs[1]
}