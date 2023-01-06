variable "trigger_file" {
  type    = string
  default = "afile.txt"
}
resource "null_resource" "null_resource_trigger" {

  ## Write your code here
  triggers = {
    config_content = filemd5(var.trigger_file)
  }

  provisioner "local-exec" {
    command = "cat ${var.trigger_file}"
  }
}
