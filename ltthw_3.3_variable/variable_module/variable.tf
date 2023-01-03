variable "filename" {
  default = "variable_filename.txt"
}

variable "content" {
  default = "SD - Dark Lord DevOps"
}

resource "local_file" "local_file_variable" {
  # content  = "Sumit Das - Dark Lord of DevOps"
  filename = var.filename
  content = var.content
}