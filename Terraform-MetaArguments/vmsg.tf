# AWS Security Groups
resource "aws_security_group" "vpc-ssh" {
    name = "vpc-ssh"
    description = "Dev VPC SSH"
    ingress {
        description = "This is for learning"
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = [ "0.0.0.0/0" ]

    }  

    egress {
        description = "Oubound Traffic"
        from_port = "0"
        to_port = "0"
        protocol = "-1"
        cidr_blocks = [ "0.0.0.0/0" ]
    } 
      
}

# Create Security Group - Web Traffic

resource "aws_security_group" "vpc-web" {
    name = "vpc-web"
    ingress {
        description = "this is for the web application"
        from_port = "80"
        to_port = "80"
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
        description = "Allow the https traffic"
        from_port = "443"
        to_port = "443"
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]

    }

    egress {
        description = "Allow outbound traffic for web servers"
        from_port = "0"
        to_port = "0"
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }  

}