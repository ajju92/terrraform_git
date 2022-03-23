provider "aws" {
  profile = var.profile
  region  = var.region
}

data "aws_caller_identity" "current" {}

#################################################
# Network
#################################################
module "network" {
  source           = "./vpc"
  network_name     = var.network_name
  cidr_block       = var.cidr_block
  azs              = var.azs
  bastion_key_name = var.bastion_key_name
  tags = {
    Name        = var.network_name
    Environment = var.environment
    Project     = var.project
    Costcenter  = var.costcenter 
  }
}