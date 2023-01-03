resource "local_file" "consumer_local_output_base64" {
  content  = base64encode(module.main.content)
  filename = base64encode(module.main.filename)
}

module "consumer_module" {
  source = "../main_module"
}