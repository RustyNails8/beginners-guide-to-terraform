output "base64_filename" {
  value = local_file.consumer_hello_local_output_base64.filename
}
output "base64_content" {
  value = local_file.consumer_hello_local_output_base64.content
}