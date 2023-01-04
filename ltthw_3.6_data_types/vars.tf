variable "a_list" {
  type = list(number)
}
variable "a_string_set" {
  type = set(string)
}
variable "a_string_map" {
  type = map(string)
}
variable "a_number_map" {
  type = map(number)
}
variable "a_boolean_map" {
  type = map(bool)
}

variable "a_number" {
  type = number
}
variable "a_string" {
  type = string
}
variable "a_boolean" {
  type = bool
}