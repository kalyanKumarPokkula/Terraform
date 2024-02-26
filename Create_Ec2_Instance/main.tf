provider "aws" {
  region = "ap-south-1"  # Specify your desired region
}

resource "aws_instance" "example" {
  ami           = "ami-03f4878755434977f"  
  instance_type = "t2.micro"  
  key_name      = "AWS_LOGIN"  
  subnet_id     = "subnet-05b50121332b56e1b"  
  tags = {
    Name = "terraform-instance"  
  }
}
