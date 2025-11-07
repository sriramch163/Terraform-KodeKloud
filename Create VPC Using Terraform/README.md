# Create VPC Using Terraform

## Task Requirements

Create a VPC using Terraform with the following specifications:

- **VPC Name**: datacenter-vpc
- **Region**: us-east-1
- **CIDR Block**: 10.0.0.0/16
- **DNS Support**: Enabled
- **DNS Hostnames**: Enabled

## Implementation

The VPC configuration is implemented in [`main.tf`](main.tf). The resource includes all required specifications with proper DNS settings and tagging.

## Key Features

- **CIDR Block**: 10.0.0.0/16 provides 65,536 IP addresses
- **DNS Support**: Enables DNS resolution within the VPC
- **DNS Hostnames**: Allows instances to receive DNS hostnames
- **Tagging**: Named "datacenter-vpc" for easy identification

## Usage

1. Ensure provider configuration is set up (provider.tf)
2. Run `terraform init` to initialize the configuration
3. Run `terraform plan` to review the changes
4. Run `terraform apply` to create the VPC

## Notes

- Provider configuration points to LocalStack endpoints (http://aws:4566)
- All resources are defined in main.tf as required