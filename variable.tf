variable "subnet_id" {
  description = "Subnet ID"
  type        = string
  default     = "subnet-0d647d78d2309afc0"

}

variable "vpc_security_group_ids" {
  description = "VPC Security group ID"
  type        = list
  default = ["sg-035b6442f9f859979"]
}

variable key_name {
  description = "Key name for ec2"
  type        = string
  default = wy-useast1-keypair

}