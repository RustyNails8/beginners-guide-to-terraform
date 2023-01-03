variable "filename" {
  default = "varibale_filename.txt"
}

resource "local_file" "local_file_variable" {
  content  = "Sumit Das - Dark Lord of DevOps"
  filename = var.filename
}