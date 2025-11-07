# AWS Security Group with Terraform

## Overview
This Task creates an AWS Security Group named `nautilus-sg` using Terraform for the Nautilus App Servers.

## Files
- `main.tf` - Terraform configuration for the security group
- `Screenshot.png` - Implementation screenshot
- `Task.png` - Task requirements image

## Security Group Configuration
- **Name:** nautilus-sg
- **Description:** Security group for Nautilus App Servers
- **Inbound Rules:**
  - HTTP (port 80) from 0.0.0.0/0
  - SSH (port 22) from 0.0.0.0/0

## Usage
```bash
terraform init
terraform validate
terraform apply
```

## Cleanup
```bash
terraform destroy
```