output "vpc_id" {
  value       = "${module.new_vpc.vpc_id}"
  description = "The id of the created VPC"
}

output "subnet_tags" {
  value       = "${local.tags}"
  description = "The tags associated with the subnets created"
}

output "all_subnet_ids" {
  value = "${concat(module.new_vpc.public_subnets, module.new_vpc.private_subnets)}"
}

output "all_cidr_blocks" {
  value = "${concat(module.new_vpc.public_subnets_cidr_blocks, module.new_vpc.private_subnets_cidr_blocks)}"
}

output "public_subnets" {
  value = "${module.new_vpc.public_subnets}"
}

output "private_subnets" {
  value = "${module.new_vpc.private_subnets}"
}

output "public_subnets_cidr_blocks" {
  value = "${module.new_vpc.public_subnets_cidr_blocks}"
}

output "private_subnets_cidr_blocks" {
  value = "${module.new_vpc.private_subnets_cidr_blocks}"
}