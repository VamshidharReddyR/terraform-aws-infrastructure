variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID for EC2 instance"
  type        = string
}

variable "security_group_id" {
  description = "Security Group ID for EC2 instance"
  type        = string
}

variable "environment" {
  description = "Environment name"
  type        = string
}
variable "ami_id" {
  description = "AMI ID for EC2 instance"
  type        = string
}
