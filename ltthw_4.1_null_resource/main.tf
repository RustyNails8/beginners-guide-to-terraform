# resource "null_resource" "null_resource_simple" {
# }

# resource "null_resource" "null_resource_complex" {
#   provisioner "local-exec" {
#     command = "echo SD - DevOps"
#   }
# }

# resource "null_resource" "null_resource_simple" {
#     provisioner "local-exec" {
#         command = "echo ${path.module} ${max(5, 12, 9)}"
#     }
# }

variable "trigger_file" {
  type    = string
  default = "afile.txt"
}
resource "null_resource" "null_resource_trigger" {
  triggers = {
    config_contents = filemd5(var.trigger_file)
  }
  provisioner "local-exec" {
    command = "cat ${var.trigger_file}"
  }
}