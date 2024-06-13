resource "aws_key_pair" "testing" {
  key_name = "abhi-key"
  public_key = file(var.path_to_public_key)
  
}




resource "aws_instance" "myec2vm" {
  ami = "ami-0533f2ba8a1995cf9"
  key_name = aws_key_pair.testing.key_name
  instance_type = var.instance_type
  user_data = file("${path.module}/app1-install.sh")
  tags = {
    "Name" = "EC2 Demo"

  }
  depends_on = [ aws_key_pair.testing ]
}