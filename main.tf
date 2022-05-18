provider "aws" {
    region = "us-west-2"
    access_key = "AKIAWI5PPWEPRABSOYGU"
    secret_key = "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"
}

resource "aws_instance" "ubuntu" {
    ami = "ami-0ee8244746ec5d6d4"
    instance_type = "t2.micro"

    tags = {
        Name = "revathi"
        Provider = "terraform"
    } 
}



