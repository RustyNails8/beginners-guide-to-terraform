# beginners-guide-to-terraform
beginners-guide-to-terraform via Educative.io

### Section 1.2 : Terraform 101
What was done in this section:

```
mkdir ltthw_resources 

echo resource "local_file" "hello_local_file" {         >    hello_local_file.tf
echo    content = "Hello terraform local!"              >>   hello_local_file.tf
echo filename =  "${path.module}/hello_local_file.txt"  >>   hello_local_file.tf
echo }                                                  >>   hello_local_file.tf

terraform init
terraform fmt
terraform validate
terraform apply
terraform apply -auto-approve
terraform plan
terraform destory
```

### Sectoin 1.5 : Terraform Module Output
1. Create a data section and a file with no contents. --> Error
2. Create a data section and a file with some contents. --> OK but no changes.
3. Create a data section and output section and a file with some contents. --> OK and changes applied and shown.

```
data "local_file" "data_file" {
  filename = "${path.module}/afile.txt"
}

output "data_file_content" {
  value = data.local_file.data_file.content
}
```

### Section 1.6 : Terraform Destroy

This is life cycle of teraform commands:

![](images/TerraformCycleOverview.jpg)

Created a local file resource and destroy it.

```
resource "local_file" "hello_destroy_file" {
  content  = "Hello terraform destroy!"
  filename = "${path.module}/hello_destroy.txt"
}
```

```
terraform init
terraform fmt
terraform validate
terraform apply
terraform show
terraform plan -destroy
terraform destroy
terraform show
```