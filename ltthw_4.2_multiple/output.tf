# output "cidr_block_splat" {
#   value = aws_vpc.aws_vpc_count[*].cidr_block
# }
output "cidr_block_for" {
  value = [
    for vpc in aws_vpc.aws_vpc_count:
      vpc.cidr_block
  ]
}
# resource "aws_vpc" "aws_vpc_count" {
#   for_each = toset(["16","17","18"])
#   cidr_block = "172.${each.value}.0.0/16"
# }