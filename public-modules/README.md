# Exercise description

## Purpose
Using the vpc

## Instructions

### 1. Prepare `main.tf` using the following fields:
- name: VPC name
- cidr: CIDR range for the VPC, defining the address space. (10.0.0.0/16)
- azs: List of Availability Zones that will be used for subnets (["eu-west-1a", "eu-west-1b", "eu-west-1c"]).
- private_subnets: Definitions for private subnets (["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"])
- public_subnets: Definitions for public subnets (["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"])
- enable_nat_gateway: Enable NAT Gateway for internet access from private subnets.
- single_nat_gateway: Specifies whether a single NAT Gateway is created for the entire VPC. - Set to false
- enable_dns_hostnames and enable_dns_support: Enable DNS support in VPC.
- enable_dhcp_options: Activate DHCP options with custom settings such as domain name and DNS servers.
- dhcp_options_domain_name: use "internal.example.com"
- enable_vpn_gateway: Enable VPN Gateway for VPC.
- vpc_tags: add `Enviornment` and `Project` tags
- private_subnet_tags: (Role = "private")
- public_subnet_tags: (Role = "public")

### 2. Extra task: create resource `aws_isntance` which will use:
- subnet created by the above module
- and the default security group (`default_security_group_id`)

&ensp;

<!-- BEGIN_TF_DOCS -->

# Terraform Docs
## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.54.1 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_vpc"></a> [vpc](#module\_vpc) | terraform-aws-modules/vpc/aws | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_instance.example](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance) | resource |
| [aws_key_pair.deployer](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/key_pair) | resource |
| [aws_ami.amazonlinux2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ami) | data source |

<!-- END_TF_DOCS -->