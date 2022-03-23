variable "profile" {
  description = "AWS profile"
}

variable "region" {
  description = "AWS deployment region"
}

variable "environment" {
  description = "AWS environment"
}

variable "project" {
  description = "Project Name"
}

variable "costcenter" {
  description = "Cost Allocation Tags"
}

#################################################
# Network
#################################################
variable "network_name" {
  description = "AWS network name"
}

variable "cidr_block" {
  description = "AWS Network CIDR block"
}

variable "azs" {
  description = "AWS Network AZS"
}

variable "bastion_key_name" {
  description = "AWS Bastin host key Name"
}
