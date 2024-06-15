resource "aws_instance" "first-instance" {
  ami               = "ami-0b0ea68c435eb488d"
  instance_type     = "t2.micro"
  availability_zone = "us-east-1b"
  tags = {
    Name = "VM-1"
  }


}