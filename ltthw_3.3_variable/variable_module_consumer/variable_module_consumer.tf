variable "myfilename" {
  default = "variable-consumer-filename.txt"
}

module "hello" {
  source   = "../variable_module"
  filename = var.myfilename
}