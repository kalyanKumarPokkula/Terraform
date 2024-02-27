
resource "aws_instance" "ssh-ec2" {
  ami = var.ami
  instance_type = "t2.micro"
  key_name = "key-for-demo"
  vpc_security_group_ids = [aws_security_group.sg.id]
  tags = {
    Name = "terraform-instance"  
  }

}

resource "aws_security_group" "sg" {
    egress = [
        {
            cidr_blocks = [ "0.0.0.0/0" ]
            description = "AWS Security Group"
            from_port = 0
            ipv6_cidr_blocks = []
            prefix_list_ids = []
            protocol = "-1"
            security_groups = []
            self = false
            to_port = 0
        }
    ]

    ingress = [
        {
            cidr_blocks = [ "0.0.0.0/0" ]
            description = "AWS Security Group"
            from_port = 22
            ipv6_cidr_blocks = []
            prefix_list_ids = []
            protocol = "tcp"
            security_groups = []
            self = false
            to_port = 22
        }
    ]
  
}

resource "aws_key_pair" "key_pair" {
    key_name = "key-for-demo"
    public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCmLT2r8HfO8jxQw6d2L8Y9ULOdABToXHEJ2Lcz3RFCkM57vXY7yhN2XjUxCbVYcrzVBGl/OGq/YPlE469LMhAuuOofuH8Z85+7loghi45M+/1eEEGc2lwhslotYzbFd14VO4W0aeqBbdjjyUirTnB22Gu/eaSc9Hr5FXbMG+Ns5Am2049HIo4jRNeqm2+4DvpqttkKQ7pOulmk4di6uyFsv2v5q04R+vqYpnebEfV3sKgdP5VBhiea2Vufb6nIc1HQvhpkEs42/XmhFQEAcZRxiOOy1sL3uxjyAhjVnPQ9h6nSui7/8UiF8bTOwbaSLYFejjlGXqtQPaab1cY4cAY9 dines@Dinesh"
  
}