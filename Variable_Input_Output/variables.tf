variable "ami" {
  type = string
  default = "ami-03f4878755434977f"
}

variable "instance_type" {
  # default = "t2.micro"
}

variable "tag" {
  # default = "terraform-instance"
}

variable "key_name" {
  default = "AWS_LOGIN"
}