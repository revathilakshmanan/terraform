provider "aws" {
    region = "us-west-2"
    access_key = "AKIAYITFZ72IT3LSGKAK"
    secret_key = "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"
}

variable public_key_location{}


resource "aws_instance" "ubuntu" {
    ami = "ami-0ee8244746ec5d6d4"
    instance_type = "t2.micro"

    tags = {
        Name = "revathi"
        Provider = "terraform"
    }
}

resource "aws_key_pair" "deployer" {
  key_name   = "deployer-key1"
  public_key =""  
 # public_key = file("<var.public_key_location>")
}




