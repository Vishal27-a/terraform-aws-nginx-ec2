terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.35.1"
    }
  }
}

provider "aws" {
  region = "us-east-2"
}

# Key pair for EC2 login
resource "aws_key_pair" "my_key" {
  key_name   = "terra-key-ec2"
  public_key = file("terra-key-ec2.pub")
}

# Default VPC
resource "aws_default_vpc" "default" {
  tags = {
    Name = "Default VPC"
  }
}

# Security Group
resource "aws_security_group" "my_security_group" {
  name        = "automate-sg"
  description = "Allow SSH & HTTP inbound traffic, all outbound"
  vpc_id      = aws_default_vpc.default.id

  # Ingress rules
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    description = "SSH open"
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    description = "HTTP open"
  }

  # Outbound rule
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    description = "All outbound"
  }

  tags = {
    Name = "automate-sg"
  }
}

# EC2 Instances
resource "aws_instance" "my_instance" {
  count = 2
  ami   = var.ec2_ami_id
  instance_type = var.ec2_instance_type
  key_name = aws_key_pair.my_key.key_name
  security_groups = [aws_security_group.my_security_group.name]

  user_data = file("install_nginx.sh")

  root_block_device {
    volume_size = var.ec2_root_storage_size
    volume_type = "gp3"
  }
}