variable "env" {
  description = "sns name"
  type        = string
  default     = "test"
}

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

variable "key_name" {
  description = "Key name for ec2"
  type        = string
  default = "wy-useast1-keypair"

}

variable "aws_ami" {
  description = "ami for ec2"
  type        = string
  default = "ami-0e9107ed11be76fde"
}

variable "aws_instance_type" {
  description = "ami for ec2"
  type        = string
  default = "t2.micro"
}

variable "ec2_name" {}

variable "security_group_name" {
  description = "security group name"
  type        = string
  default = "wy-sg-allow-http-https-ssh-from-ip"
}