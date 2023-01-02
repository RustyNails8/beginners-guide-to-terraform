variable "region" {
  type = string
}

provider "aws" {
  region = var.region
}

resource "aws_vpc" "ltthw_aws_vpc" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "ltthw_aws_vpc_subnet" {
  vpc_id     = aws_vpc.ltthw_aws_vpc.id
  cidr_block = aws_vpc.ltthw_aws_vpc.cidr_block
}

resource "local_file" "ltthw_local_file" {
  content  = "I am Sumit Das - Dark Lord of DevOps"
  filename = "${path.module}/ltthw_local_file.txt"
  depends_on = [
    aws_vpc.ltthw_aws_vpc
  ]
}