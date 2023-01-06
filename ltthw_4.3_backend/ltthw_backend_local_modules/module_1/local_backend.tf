terraform {
  backend "local" {
    path = "../ltthw_backend_local_state/terraform.tfstate"
  }
}
resource "local_file" "hello_local_file" {
  content  = "Hello terraform backend from module_1!"
  filename = "../ltthw_backend_local_file/hello_local_file.txt"
}
