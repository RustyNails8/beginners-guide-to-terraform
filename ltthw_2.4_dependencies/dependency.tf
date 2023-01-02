variable "region" {
  type = string
}
# variable "YOURSECRETKEY" {
#   type = string
# }
# variable "YOURACCESSKEY" {
#   type = string
# }

provider "aws" {
  #   access_key = var.YOURACCESSKEY
  #   secret_key = var.YOURSECRETKEY
  region = var.region
}
resource "aws_vpc" "ltthw-vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "ltthw-vpc"
  }
}
resource "local_file" "hello_local_file" {
  content    = "Hello terraform local!"
  filename   = "${path.module}/hello_local.txt"
  depends_on = [aws_vpc.ltthw-vpc]
}