resource "local_file" "hello_local_output" {
  content  = var.content
  filename = var.filename
}