resource "aws_instance" "ec2" {
  ami           = data.aws_ami.amazonlinux2.id
  instance_type = "t2.micro"
  tags = {
    Name = "dor12-aleksander"
    Env  = "dev"
  }

  lifecycle {
    create_before_destroy = true
    prevent_destroy       = true
    ignore_changes = [
      tags,
    ]
  }
}