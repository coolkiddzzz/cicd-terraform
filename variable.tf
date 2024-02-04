variable "subnet_id" {
  description = "Subnet ID"
  type        = string
  sensitive   = true
}

variable "vpc_security_group_ids" {
  description = "VPC Security group ID"
  type        = list
  sensitive   = true
}
