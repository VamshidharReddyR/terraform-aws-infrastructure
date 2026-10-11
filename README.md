# Terraform AWS Infrastructure

This repository contains Terraform configurations for provisioning AWS infrastructure using a modular approach.

The goal of this project is to organize infrastructure components into reusable modules while keeping the root configuration simple and easy to manage.

## Technologies

- Terraform
- AWS VPC
- AWS EC2
- AWS Security Groups
- AWS Internet Gateway
- AWS Route Tables
- Git
- GitHub

## Repository Structure

terraform-aws-infrastructure

modules
├── network
├── security-group
└── ec2

main.tf
provider.tf
variables.tf
outputs.tf
terraform.tfvars

## Planned Infrastructure

- Custom VPC
- Public Subnet
- Internet Gateway
- Route Table
- Security Group
- EC2 Instance

## Terraform Concepts

- Modules
- Variables
- Outputs
- Resource Dependencies
- Reusable Infrastructure Components

## Future Enhancements

- Multiple Environments
- Remote Backend
- Terraform State Management
- Additional AWS Services
