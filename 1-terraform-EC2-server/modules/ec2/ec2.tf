locals {
  tags = {
    Env = "Dev"
  }
}

resource "aws_instance" "project" {
  ami             = var.ec2_ami  
  instance_type   = var.ec2_instance_type  
  security_groups = [aws_security_group.sg_final.id] 
  subnet_id       = var.ec2_subnet_id
  key_name        = var.key_name
  
  tags = {
    Name = var.ec2_name  
    Env  = local.tags.Env
  }
}

resource "aws_eip" "eip_project" {
  instance = aws_instance.project.id
  domain = "vpc"
}

resource "aws_security_group" "sg_final" {
  vpc_id = var.vpc_id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "TCP"
    cidr_blocks = ["0.0.0.0/0"]  
  }  

  ingress {
    from_port   = 8080  
    to_port     = 8080
    protocol    = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  ingress {
    from_port   = 443  
    to_port     = 443
    protocol    = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}