output "vpc_id" {
  description = "The IDs of the VPC"
  value       = {for k, v in module.kratos_multi_vpc: k => v.vpc_id}
}

output "vpc_arn" {
  description = "The ARNs of the VPC"
  value       = {for k, v in module.kratos_multi_vpc: k => v.vpc_arn}
}

output "public_subnets" {
  description = "The IDs of the public subnets"
  value       = {for k, v in module.kratos_multi_vpc: k => v.public_subnets}
}

output "private_subnets" {
  description = "The IDs of the private subnets"
  value       = {for k, v in module.kratos_multi_vpc: k => v.private_subnets}
}