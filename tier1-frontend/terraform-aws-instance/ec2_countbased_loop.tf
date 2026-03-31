resource "aws_instance" "terraform3" {
  ami           = "ami-0220d79f3f480ecf5"
  count = 4
  instance_type = "t3.micro"
  vpc_security_group_ids =[aws_security_group.allow_all3.id]

  tags = {
    Name = var.instances [ count.index ]
    name = "true"
  }
}
resource "aws_security_group" "allow_all3" {
    name = "allow_all3"
  description = "Allow all inbound traffic and all outbound traffic"

  egress {
    from_port        = 0 #allow all ports
    to_port          = 0
    protocol         = "-1" #allow all protocols
    cidr_blocks      = ["0.0.0.0/0"] #internet
  }
  ingress {
    from_port        = 0 #allow all ports
    to_port          = 0
    protocol         = "-1" #allow all protocols
    cidr_blocks      = ["0.0.0.0/0"] #internet
  }
    tags = {
    Name = "allow-all3"
  }
}