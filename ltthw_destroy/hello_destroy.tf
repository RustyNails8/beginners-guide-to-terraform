resource "local_file" "hello_destroy_file" {
  content  = "Hello terraform destroy!"
  filename = "${path.module}/hello_destroy.txt"
}