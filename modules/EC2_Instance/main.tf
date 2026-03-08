resource aws_key_pair "web01-key"{

    key_name = "web01_key"
    public_key = var.public_key
}

resource aws_security_group "web01-sg"{
    name = var.sgname
    description = "This is the security group for web01"
    
    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    
    egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "web01" {
    ami = var.amiId
    instance_type = var.instance_type
    key_name = aws_key_pair.web01-key.key_name
    security_groups = [aws_security_group.web01-sg.name]

    tags = {
        Name = var.tagname
    }
}