resource "aws_key_pair" "deployer" {
  key_name   = "ec2-key-pair"
  public_key = file("~/.ssh/id_ed25519.pub")
}

module "my_ec2_instances" {
  source         = "./module"
  key_name       = aws_key_pair.deployer.id
  instance_type  = "t2.micro"
  instance_names = ["my-ec2-instance-1", "my-ec2-instance-2", "my-ec2-instance-3"]
  tags = {
    Environment = "Dev"
    Project     = "MyProject"
  }
}
