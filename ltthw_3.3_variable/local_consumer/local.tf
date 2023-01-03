locals {
  myfilename2 = "locals_filename.txt"
}

locals {
  content = "Sumit Das - Dark Lord of DevOps"
}
module "hello" {
  source   = "../variable_module"
  filename = local.myfilename2
  content = local.content
}