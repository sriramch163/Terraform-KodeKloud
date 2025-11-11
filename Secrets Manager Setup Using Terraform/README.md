# Secrets Manager Setup Using Terraform

## Objective

Create an AWS Secrets Manager secret named `xfusion-secret` that securely stores the credentials — username: `admin` and password: `Namin123` — using Terraform.

## Architecture

This Terraform configuration creates:
- An AWS Secrets Manager secret for secure credential storage
- A secret version containing the username and password
- Encrypted storage with automatic rotation capabilities
- Secure access through IAM permissions

## Prerequisites

- AWS CLI configured with appropriate credentials
- Terraform installed (version 0.12+)
- AWS provider configured
- Secrets Manager permissions

## Configuration Details

### Secret Specifications

| Parameter | Value | Description |
|-----------|-------|-------------|
| **Secret Name** | `xfusion-secret` | Unique secret identifier |
| **Username** | `admin` | Stored credential username |
| **Password** | `Namin123` | Stored credential password |
| **Format** | `JSON` | Secret value format |

### Resources Created

1. **Secrets Manager Secret** - Container for the secret
2. **Secret Version** - Actual credential values in JSON format

## Usage

1. **Initialize Terraform**
   ```bash
   terraform init
   ```

2. **Plan the deployment**
   ```bash
   terraform plan
   ```

3. **Apply the configuration**
   ```bash
   terraform apply
   ```

4. **Verify the secret**
   - Check AWS Secrets Manager console
   - Secret should appear with encrypted values

## Retrieving Credentials

**AWS CLI:**
```bash
aws secretsmanager get-secret-value --secret-id "xfusion-secret"
```

**AWS CLI (parsed):**
```bash
aws secretsmanager get-secret-value --secret-id "xfusion-secret" --query "SecretString" --output text
```

**Python (boto3):**
```python
import boto3
import json

client = boto3.client('secretsmanager')
response = client.get_secret_value(SecretId='xfusion-secret')
credentials = json.loads(response['SecretString'])
username = credentials['username']
password = credentials['password']
```

## Security Features

- **Encryption at Rest** - AES-256 encryption using AWS KMS
- **Encryption in Transit** - TLS encryption for API calls
- **Access Control** - IAM-based permissions
- **Audit Logging** - CloudTrail integration
- **Automatic Rotation** - Optional credential rotation

## Secret Structure

The secret stores credentials in JSON format:
```json
{
  "username": "admin",
  "password": "Namin123"
}
```

## Use Cases

Perfect for:
- Database connection credentials
- API keys and tokens
- Application passwords
- Third-party service credentials
- Certificate private keys

## Best Practices

- **Least Privilege** - Grant minimal required permissions
- **Regular Rotation** - Implement automatic rotation
- **Monitoring** - Set up CloudWatch alarms
- **Versioning** - Use secret versions for updates
- **Tagging** - Add tags for organization

## Files

- `main.tf` - Contains Secrets Manager secret and version resources

## Cost Considerations

- **Secret storage** - $0.40 per secret per month
- **API requests** - $0.05 per 10,000 requests
- **Rotation** - Additional charges for Lambda functions

## Cleanup

To remove the secret:
```bash
terraform destroy
```

**Note**: Secrets have a recovery window (default 30 days) before permanent deletion.

## Next Steps

Consider adding:
- Automatic rotation configuration
- Resource tags for organization
- Cross-region replication
- Custom KMS key for encryption
- IAM policies for access control