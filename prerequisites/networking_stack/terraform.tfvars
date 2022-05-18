# Will be prefixed to all resource names
# Use this to easily identify the resources created and provide entropy for subsequent environments
prefix = "gt"

# --- Default VPC
# Update to the VPC you would like to deploy into
# Find your default: https://docs.aws.amazon.com/vpc/latest/userguide/default-vpc.html#view-default-vpc
region = "eu-west-2"
avalibility_zones             = ["eu-west-2a", "eu-west-2b", "eu-west-2c"]
vpc_name = "snowplow-sandbox"
vpc_cidr = "10.0.0.0/16"
public_subnet_cidrs = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
private_subnet_cidrs = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]

enable_nat_gateway = true
enable_vpn_gateway = true

# --- AWS IAM (advanced setting)
iam_permissions_boundary = ""


# --- Extra Tags to append to created resources (optional)
tags = {}




