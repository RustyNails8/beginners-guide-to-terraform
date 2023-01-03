resource "local_file" "myfilename" {
  content  = var.content
  filename = var.filename
}