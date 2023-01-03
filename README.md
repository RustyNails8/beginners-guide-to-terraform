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

### Exercise_1

Q. Print you name in terraform.

A.

<ins>myname_file.txt</ins>

```
My name is Sumit Das.
Dark Lord of DevOps.
```

<ins>output.tf</ins>

```
data "local_file" "myname_data" {
  filename = "${path.module}/myname_file.txt"
}

output "myname_data-output" {
  value = data.local_file.myname_data.content
}
```

> Run the commands:

```
terraform init
terraform fmt
terraform validate
terraform apply -auto-approve
terraform show
terraform plan
```

### Section 2.3 and 2.4 : Dependency

Commands used:

```
terraform plan -destroy -target=aws_vpc.ltthw-vpc
terraform plan -destroy -target=local_file.hello_local_file
```
### Section 2.5 : Graph

```
terraform graph
terraform graph > graph.dot
cat graph.dot
cat graph.dot | dot -Tpng > graph.png
```

Graph is crated like this:

![](images/TerraformGraph.jpg)

### Section 2.6 : Import

Commands Used:
```
terraform show > resources.txt
rm terraform.tfstate terraform.state.backup
terraform import aws_subnet.ltthw-vpc-subnet subnet-01c0aa6aac2b22023
terraform state list
terraform show 
terraform import aws_vpc.ltthw-vpc vpc-13a5a768
terraform state list
terraform show
terraform import local_file.hello_local_file hello_local.txt
```

### Section 3.2 : Modules
### Section 3.3 : Module Variables

Check the files in [ltthw_3.3_variable](ltthw_3.3_variable/variable_module_consumer/variable_module_consumer.tf)

Takeaway Commands:

```
terraform apply -var 'myfilename=command_line_filename.txt' -auto-approve 
```

### Section 3.4 : Module Output

How to access variable from another module :

```
output "consumer_content" {
  value = module.hello.content
}
```