module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "dor12-aleksander-example-vpc"
  cidr = "10.0.0.0/16"

  azs             = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]

  enable_nat_gateway = true
  single_nat_gateway = false

  enable_dns_hostnames = true
  enable_dns_support   = true

  enable_dhcp_options = true


  dhcp_options_domain_name = "internal.example.com"
  enable_vpn_gateway       = true

  vpc_tags = {
    Project     = "public_module"
    Environment = "dev"
  }
  private_subnet_tags = { Role = "private" }
  public_subnet_tags  = { Role = "public" }

}

resource "aws_key_pair" "deployer" {
  key_name   = "deployer-key"
  public_key = file("~/.ssh/id_ed25519.pub")
}

resource "aws_instance" "example" {
  ami             = data.aws_ami.amazonlinux2.id
  key_name        = aws_key_pair.deployer.id
  instance_type   = "t2.micro"
  subnet_id       = module.vpc.public_subnets[0]
  security_groups = [module.vpc.default_security_group_id]

  tags = {
    Name         = "example-instance-aleksander-radziszewski"
    Environtment = "dev"
  }
}