locals {
  base_name = "${var.env}-aleksander-radziszewski-${var.project}"
}

resource "aws_vpc" "example_vpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "${local.base_name}-vpc"
  }
}

resource "aws_subnet" "example_subnet" {
  vpc_id     = aws_vpc.example_vpc.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "${local.base_name}-subnet"
  }
}

resource "aws_instance" "example_instance" {
  ami           = data.aws_ami.amazonlinux2.id
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.example_subnet.id
  tags = {
    Name = "${local.base_name}-ec2"
  }
}