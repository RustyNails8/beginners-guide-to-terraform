variable "filename" {
  default = "default_filename.txt"
}
variable "content" {
  default = "Hello terraform local output module!"
}
output "filename" {
  value = var.filename
}
output "content" {
  value = var.content
}
resource "local_file" "hello_local_output" {
  content  = var.content
  filename = var.filename
} 