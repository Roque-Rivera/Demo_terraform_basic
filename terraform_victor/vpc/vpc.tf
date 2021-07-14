resource "aws_vpc" "vpc_main" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"

  tags = {
    Name = "main"
  }
}

resource "aws_subnet" "web_subnet_a" {
  vpc_id     = aws_vpc.vpc_main.id
  cidr_block = var.web_subnet_a_cidr
  availability_zone = "us-east-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = "web_subnet_a"
  }
}


resource "aws_subnet" "web_subnet_b" {
  vpc_id     = aws_vpc.vpc_main.id
  cidr_block = var.web_subnet_b_cidr
  availability_zone = "us-east-1b"
  map_public_ip_on_launch = true
  
  tags = {
    Name = "web_subnet_b"
  }
}

resource "aws_subnet" "app_subnet_a" {
  vpc_id     = aws_vpc.vpc_main.id
  cidr_block = var.app_subnet_a_cidr
  availability_zone = "us-east-1a"


  tags = {
    Name = "app_subnet_a"
  }
}

resource "aws_subnet" "app_subnet_b" {
  vpc_id     = aws_vpc.vpc_main.id
  cidr_block = var.app_subnet_b_cidr
  availability_zone = "us-east-1b"

  tags = {
    Name = "app_subnet_b"
  }
}

resource "aws_subnet" "db_subnet_a" {
  vpc_id     = aws_vpc.vpc_main.id
  cidr_block = var.db_subnet_a_cidr
  availability_zone = "us-east-1a"

  tags = {
    Name = "db_subnet_a"
  }
}

resource "aws_subnet" "db_subnet_b" {
  vpc_id     = aws_vpc.vpc_main.id
  cidr_block = var.db_subnet_b_cidr
  availability_zone = "us-east-1b"

  tags = {
    Name = "db_subnet_b"
  }
}