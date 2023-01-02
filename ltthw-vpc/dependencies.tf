variable "region" {
  type = string
}

provider "aws" {
  region = var.region
}
resource "aws_vpc" "ltthw-vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "ltthw-vpc"
  }
}
resource "aws_subnet" "ltthw-vpc-subnet" {
  vpc_id     = aws_vpc.ltthw-vpc.id
  cidr_block = aws_vpc.ltthw-vpc.cidr_block
}