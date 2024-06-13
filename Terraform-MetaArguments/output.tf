output "instance_public_ip" {
    description = "Print the public ip of the instances"
    value = toset([for myec2vm in aws_instance.myec2vm : myec2vm.public_ip])
  
}

output "instance_public-dns" {
    description = "print the public dns name"
    value = toset([for myec2vm in aws_instance.myec2vm : myec2vm.public_dns])
  
}