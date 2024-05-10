resource "aws_instance" "db" {
    ami = "ami-090252cbe067a9e58"
    vpc_security_group_ids = ["sg-0fea5e49e962e81c9"]
    instance_type = lookup(var.instance_type, terraform.workspace)
}