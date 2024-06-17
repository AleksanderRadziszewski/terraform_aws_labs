resource "aws_instance" "ec2" {
  for_each      = toset(var.instance_names)
  ami           = data.aws_ami.amazonlinux2.id
  instance_type = "t2.micro"
  tags = {
    Name = each.value
  }
}