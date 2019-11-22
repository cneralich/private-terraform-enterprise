variable "cidr_block" {
  description = "CIDR block range to use for the network."
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr_blocks" {
  type        = "list"
  description = "CIDR block ranges to use for the public subnets."
  default     = ["10.0.21.0/24", "10.0.22.0/24", "10.0.23.0/24"]
}

variable "private_subnet_cidr_blocks" {
  type        = "list"
  description = "CIDR block ranges to use for the private subnets."
  default     = ["10.0.11.0/24", "10.0.12.0/24", "10.0.13.0/24"]
}


variable "additional_tags" {
  type        = "map"
  description = "A map of additional tags to attach to all resources created."
  default     = {}
}

variable "availability_zones" {
  description = "List of the Availability zones to use."
  default     = ["us-west-2a", "us-west-2b", "us-west-2c"]
}

variable "prefix" {
  description = "The prefix to use on all resources, will generate one if not set."
  default     = ""
}

locals {
  prefix = "${element(coalescelist(list(var.prefix), random_pet.prefix.*.id), 0)}"
  tags   = "${merge(local.default_tags, var.additional_tags)}"

  default_tags = {
    Application = "Terraform Enterprise"
    Environment = "Production"
  }
}