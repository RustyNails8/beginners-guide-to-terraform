resource "local_file" "consumer_hello_local_output_base64" {
  content  = base64encode(module.consumed.content)
  filename = base64encode(module.consumed.filename)
}
module "consumed" {
  source = "../consumed_module"
}