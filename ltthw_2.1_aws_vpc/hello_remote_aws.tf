variable "region" {
  type = string
}

provider "aws" {
  region = var.region
}
resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
}