provider "aws" {
    region = "us-east-1"
    profile = var.profile
}

resource "aws_instance" "rmq" {
    ami = "ami-07ebfd5b3428b6f4d"
    instance_type = "t2.micro"
    key_name = "rabbitmq"
    vpc_security_group_ids = ["sg-05cb1aa9531a53201"]

    tags = {
        Name = var.name
        group = var.group
    }
}
