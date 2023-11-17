provider "aws" {
    region = "ap-south-1"
}

resource "aws_instance" "example" {
    ami           = "ami-0b6581fde9e6e7779"
    instance_type = "t2.micro"
    key_name      = "AWS_LOGIN"

    tags= {
        Name = "terraform"
    }
}


