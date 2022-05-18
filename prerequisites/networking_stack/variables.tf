variable "prefix" {
  description = "Will be prefixed to all resource names. Use to easily identify the resources created"
  type        = string
}

variable "vpc_name" {
  description = "The VPC to deploy the components within"
  type        = string
}

variable "avalibility_zones" {
  description = "The list of avalibility zones to deploy the components across"
  type        = list(string)
}

variable "vpc_cidr" {
  description = "The main CIDR for the VPC"
  type        = string
}

variable "public_subnet_cidrs" {
  description = "The list of public subnets to deploy the components across"
  type        = list(string)
}

variable "private_subnet_cidrs" {
  description = "The list of private subnets to deploy the components across"
  type        = list(string)
}

variable "enable_nat_gateway" {
  description = "The list of private subnets to deploy the components across"
  type        = bool
  default     = true
}
variable "enable_vpn_gateway" {
  description = "The list of private subnets to deploy the components across"
  type        = bool
  default     = true
}

variable "enable_dns_hostnames" {
  description = "The list of private subnets to deploy the components across"
  type        = bool
  default     = true
}

variable "iam_permissions_boundary" {
  description = "The permissions boundary ARN to set on IAM roles created"
  default     = ""
  type        = string
}