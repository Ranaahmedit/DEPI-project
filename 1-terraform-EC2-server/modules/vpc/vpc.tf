resource "aws_vpc" "vpc-final-project" {
  cidr_block       = var.vpc_config.cidr
  instance_tenancy = "default"

  tags = {
    Name = var.vpc_config.name
  }
}

resource "aws_internet_gateway" "final-gw" {
  vpc_id = aws_vpc.vpc-final-project.id

  tags = {
    Name = var.vpc_config.gw_name
  }
}

resource "aws_subnet" "subnet-final-project" {
  vpc_id            = aws_vpc.vpc-final-project.id
  cidr_block        = var.vpc_config.subnet_cidr
  availability_zone = var.vpc_config.subnet_avb

  tags = {
    Name = var.vpc_config.public_subnet_name
  }
}

resource "aws_route_table" "final" {
  vpc_id = aws_vpc.vpc-final-project.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.final-gw.id
  }

  tags = {
    Name = var.vpc_config.route_name
  }
}

resource "aws_route_table_association" "public_route_table" {
  subnet_id      = aws_subnet.subnet-final-project.id
  route_table_id = aws_route_table.final.id
}

resource "aws_subnet" "subnet-private-final-project" {
  vpc_id            = aws_vpc.vpc-final-project.id
  cidr_block        = var.vpc_config.private_subnet_cidr
  availability_zone = var.vpc_config.subnet_avb

  tags = {
    Name = var.vpc_config.private_subnet_name
  }
}

resource "aws_route_table" "final_private_rt" {
  vpc_id = aws_vpc.vpc-final-project.id

  tags = {
    Name = var.vpc_config.private_route_name
  }
}

resource "aws_eip" "nat_eip" {
   domain = "vpc"  
}

resource "aws_nat_gateway" "private-nat" {
  subnet_id     = aws_subnet.subnet-private-final-project.id
  allocation_id  = aws_eip.nat_eip.id  

  tags = {
    Name = "gw NAT"
  }

  depends_on = [aws_internet_gateway.final-gw]
}

resource "aws_route" "private_nat_route" {
  route_table_id         = aws_route_table.final_private_rt.id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = aws_nat_gateway.private-nat.id
}

resource "aws_route_table_association" "private_route_table" {
  subnet_id      = aws_subnet.subnet-private-final-project.id
  route_table_id = aws_route_table.final_private_rt.id
}