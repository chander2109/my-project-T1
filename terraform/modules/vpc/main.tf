resource "aws_vpc" "chan_pr8" {
  cidr_block           = var.ch_vpc_cidr
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Name = var.ch_vpc_name
  }
}

resource "aws_subnet" "subnet1" {
  vpc_id            = aws_vpc.chan_pr8.id
  cidr_block        = var.ch_subnet1_cidr
  availability_zone = var.ch_az1

  tags = {
    Name = var.ch_subnet1_name
  }
}

resource "aws_subnet" "subnet2" {
  vpc_id            = aws_vpc.chan_pr8.id
  cidr_block        = var.ch_subnet2_cidr
  availability_zone = var.ch_az2

  tags = {
    Name = var.ch_subnet2_name
  }
}