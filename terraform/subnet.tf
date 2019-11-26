resource "aws_subnet" "eu-west-2a-public" {
  vpc_id = aws_vpc.main_vpc.id

  cidr_block        = var.public_subnet_cidr
  availability_zone = "eu-west-2a"

  tags = {
    Name = "Public Subnet"
  }
}

resource "aws_subnet" "eu-west-2a-private" {
  vpc_id = aws_vpc.main_vpc.id

  cidr_block        = var.private_subnet_cidr
  availability_zone = "eu-west-2a"

  tags = {
    Name = "Private Subnet"
  }
}

