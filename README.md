# Terraform AWS Infrastructure

This repository contains Terraform configurations for provisioning AWS infrastructure using a modular approach.

The project is structured using reusable Terraform modules to separate networking, security groups, and compute resources.

## Overview

The infrastructure is divided into individual modules to improve maintainability and reusability.

Current modules include:

- Network
- Security Group
- EC2

## Architecture

Terraform
|
+-- Network Module
|   |
|   +-- VPC
|   +-- Public Subnet
|   +-- Internet Gateway
|   +-- Route Table
|
+-- Security Group Module
|   |
|   +-- SSH Access (22)
|   +-- HTTP Access (80)
|   +-- HTTPS Access (443)
|
+-- EC2 Module
    |
    +-- EC2 Instance
    +-- Key Pair Configuration
    +-- Root Volume Configuration

## Repository Structure

terraform-aws-infrastructure

modules/
├── network/
├── security-group/
└── ec2/

main.tf
provider.tf
variables.tf
terraform.tfvars
outputs.tf

## Features

- Modular Terraform Design
- AWS VPC Creation
- Public Subnet Configuration
- Internet Gateway Integration
- Route Table Association
- Security Group Management
- EC2 Provisioning
- Configurable Key Pair Support
- Configurable Root Volume Size
- Reusable Infrastructure Components
- Variable Driven Configuration

## Technologies Used

- Terraform
- AWS
- Amazon VPC
- Amazon EC2
- AWS Security Groups
- Git
- GitHub

## Future Enhancements

- Private Subnets
- NAT Gateway
- Application Load Balancer
- Auto Scaling Group
- Remote State Backend using S3 and DynamoDB
- Multi Environment Deployments
- Additional Terraform Modules
