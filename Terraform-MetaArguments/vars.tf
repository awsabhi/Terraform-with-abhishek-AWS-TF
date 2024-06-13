variable "AWS_ACCESS_KEY" {
    type = string
  
}

variable "AWS_SECRET_KEY" {
    type = string
  
}

variable "aws_region" {
    type = string
    default = "us-east-1"
}
variable "instance_type" {
    type = string
    default = "t2.micro"
  
}
# variable "aws_key" {
#     type = string
#     default = "abhi-key.pub"
#}


variable "path_to_public_key" {
    type = string
    default = "abhi-key.pub"
  
}
