resource "aws_instance" "Roboshop" {
    count = 4
  ami           = var.ami_id      # this is from loops concept by using count , by giving count=4 wecan creat 4 instance , we can can creat number of instance that we want 
   instance_type = var.environment =="dev" ? "t3.micro" : "t3.small"
  vpc_security_group_ids = [aws_security_group.allows.id]

  tags = {
    Name = var.instances[count.index] # this syntax is used for giving names for instances 
  }
}


resource "aws_security_group" "allows" {
name = var.sg_name
description = var.sg_description

ingress {
    from_port        = var.from_port
    to_port          = var.to_port
    protocol         = "-1"
    cidr_blocks      = var.cidr_blocks
    ipv6_cidr_blocks = ["::/0"]
  }


egress {
    from_port        = var.from_port
    to_port          = var.to_port
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }



tags = var.sg_tags
  

}



