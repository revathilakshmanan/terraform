provider "aws" {
    region = "us-west-2"
    access_key = ""
    secret_key = ""
}

resource "aws_instance" "ubuntu" {
    ami = "ami-0ee8244746ec5d6d4"
    instance_type = "t2.micro"

    tags = {
        Name = "revathi"
        Provider = "terraform"
    } 
}



