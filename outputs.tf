output "vpc_id" {
  description = "VPC ID"
  value       = module.network.vpc_id
}

output "public_subnet_id" {
  description = "Public Subnet ID"
  value       = module.network.public_subnet_id
}

output "security_group_id" {
  description = "Security Group ID"
  value       = module.security_group.security_group_id
}

output "instance_id" {
  description = "EC2 Instance ID"
  value       = module.ec2.instance_id
}

output "public_ip" {
  description = "EC2 Public IP"
  value       = module.ec2.public_ip
}
