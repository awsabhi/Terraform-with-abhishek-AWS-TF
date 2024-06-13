resource "aws_key_pair" "testing" {
  key_name = "abhi-key"
  public_key = file(var.path_to_public_key)
  
}

data "aws_availability_zones" "example" {
  filter {
    name   = "opt-in-status"
    values = ["opt-in-not-required"]
  }
}



resource "aws_instance" "myec2vm" {
  ami = data.aws_ami.example.id
  key_name = aws_key_pair.testing.key_name
  vpc_security_group_ids = [ aws_security_group.vpc-ssh.id, aws_security_group.vpc-web.id]
  for_each = toset(data.aws_availability_zones.example.names)
  availability_zone = each.key
  instance_type = var.instance_type
  user_data = file("${path.module}/app1-install.sh")
  tags = {
    "Name" = "For-Each-Demo-${each.key}"

  }
  depends_on = [ aws_key_pair.testing ]
}
