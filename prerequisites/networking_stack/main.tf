module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "${var.prefix}-${var.vpc_name}"
  cidr = var.vpc_cidr

  azs             = var.avalibility_zones
  private_subnets = var.private_subnet_cidrs
  public_subnets  = var.public_subnet_cidrs

  enable_nat_gateway = var.enable_nat_gateway
  enable_vpn_gateway = var.enable_vpn_gateway
  

  tags = {
    Terraform = "true"
    Environment = "${var.prefix}-sandbox"
  }
}



