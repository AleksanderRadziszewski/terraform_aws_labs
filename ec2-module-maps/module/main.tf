resource "aws_instance" "instances" {
  for_each      = var.instance_names
  ami           = data.aws_ami.amazonlinux2.id
  instance_type = var.instance_type
  key_name      = var.key_name

  tags = merge(var.tags, { Name = each.value })
}