output "consumer_filename" {
  value = module.hello.filename
}

output "consumer_content" {
  value = module.hello.content
}

module "hello" {
  source = "../output_module"
}