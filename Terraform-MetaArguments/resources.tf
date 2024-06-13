resource "aws_key_pair" "testing" {
  key_name = "abhi-key"
  public_key = file(var.path_to_public_key)
  
}




resource "aws_instance" "myec2vm" {
  count = 2
  ami = data.aws_ami.example.id
  key_name = aws_key_pair.testing.key_name
  vpc_security_group_ids = [ aws_security_group.vpc-ssh.id, aws_security_group.vpc-web.id]
  instance_type = var.instance_type
  user_data = file("${path.module}/app1-install.sh")
  tags = {
    "Name" = "EC2Demo-${count.index}"

  }
  depends_on = [ aws_key_pair.testing ]
}
