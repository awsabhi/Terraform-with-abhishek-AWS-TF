output "public_ip" {
    description = "Print the public ip of the instances"
    value = aws_instance.myec2vm.public_ip
  
}

output "public-dns" {
    description = "print the public dns name"
    value = aws_instance.myec2vm.public_dns
  
}