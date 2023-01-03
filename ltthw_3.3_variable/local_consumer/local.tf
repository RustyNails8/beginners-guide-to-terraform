locals {
  myfilename2 = "locals_filename.txt"
}

module "hello" {
  source   = "../variable_module"
  filename = local.myfilename2
}