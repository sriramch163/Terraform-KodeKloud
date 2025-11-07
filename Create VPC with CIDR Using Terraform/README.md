# Create VPC with CIDR Using Terraform

## Objective
Create a VPC named `nautilus-vpc` in the `us-east-1` AWS region with IPv4 CIDR block `192.168.0.0/24`.

## Resources Created
- AWS VPC with CIDR block `192.168.0.0/24`
- VPC tagged with name `nautilus-vpc`

## Directory Structure
```
Create VPC with CIDR Using Terraform/
├── main.tf
├── README.md
└── Task.png
```


## Usage

1. Initialize Terraform:
   ```bash
   terraform init
   ```

2. Plan the deployment:
   ```bash
   terraform plan
   ```

3. Apply the configuration:
   ```bash
   terraform apply
   ```

4. Clean up resources:
   ```bash
   terraform destroy
   ```

## Requirements
- Terraform installed
- AWS CLI configured with appropriate credentials
- AWS provider access to `us-east-1` region