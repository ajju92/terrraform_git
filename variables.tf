variable "profile" {
  description = "The name of the profile to use"
  default     = "default"
}

variable "region" {
  description = "The region to use"
  default     = "us-east-1"
}

variable "branch" {
  description = "branch name"
  default     = "main"
}

variable "vpcs" {
  description = "Map of vpc names to create"
  default     = {
    transit = {
      name                                      = "Transit-VPC"
      cidr                                      = "10.10.0.0/16"
      private_subnets                           = ["10.10.1.0/24", "10.10.2.0/24", "10.10.3.0/24"]
      public_subnets                            = ["10.10.101.0/24", "10.10.102.0/24", "10.10.103.0/24"]
      flow_log_cloudwatch_log_group_name_prefix = "/aws/vpc-flow-log/transit-vpc/"
      enable_nat_gateway                        = false
      enable_vpn_gateway                        = false
      create_egress_only_igw                    = false
      create_elasticache_subnet_group           = false
      create_flow_log_cloudwatch_iam_role       = true
      create_flow_log_cloudwatch_log_group      = true
      create_igw                                = true
      tags = {
        Terraform   = "true"
        Environment = "dev"
        Type         = "Transit VPC"
      }
    }
  }
}
