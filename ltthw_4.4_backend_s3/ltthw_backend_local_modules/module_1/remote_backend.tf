terraform {
  backend "s3" {
    bucket = "ltthw-893a587da8e9042af7e1866674711453"
    key = "terraform_state/local_file"
    region = "us-west-2"
  }
}
resource "local_file" "hello_local_file" {
    content     = "Hello terraform REMOTE backend from module_1!"
    filename = "../../ltthw_backend_local_file/hello_local_file.txt"
}