variable "rectangle" {
  type = object({
    length      = number,
    width       = number,
    description = string
  })
}
variable "a_tuple" {
  type = tuple([number, string])
}