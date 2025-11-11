# Delete Backup from S3 Using Terraform

## Task Objective

Copy all contents from the S3 bucket `xfusion-bck-27269` to the local directory `/opt/s3-backup/`, and then delete the bucket using Terraform with AWS CLI commands.

## Prerequisites

- AWS CLI configured with appropriate credentials
- Terraform installed (version 0.12+)
- S3 permissions for read and delete operations
- Local directory `/opt/s3-backup/` accessible

## Configuration

| Parameter | Value |
|-----------|-------|
| **Source Bucket** | `xfusion-bck-27269` |
| **Local Directory** | `/opt/s3-backup/` |
| **Operation** | Copy then delete |

## Resources

1. **backup_s3_bucket** - Copies all bucket contents locally
2. **delete_s3_bucket** - Removes the S3 bucket after backup

## Steps

1. **Run Terraform commands:**
   ```bash
   terraform init
   terraform plan
   terraform apply
   ```

2. **Verify backup:**
   ```bash
   ls -la /opt/s3-backup/
   ```

3. **Confirm bucket deletion:**
   ```bash
   aws s3 ls s3://xfusion-bck-27269
   ```

## Operations Performed

1. **Backup**: `aws s3 cp s3://xfusion-bck-27269 /opt/s3-backup/ --recursive`
2. **Delete**: `aws s3 rb s3://xfusion-bck-27269 --force`

## Directory Structure

```
Delete Backup from S3 Using Terraform/
├── main.tf
├── README.md
└── Task.png
```

## Files

- `main.tf` - Terraform configuration with null resources for AWS CLI operations

## Cleanup

No cleanup needed - bucket is deleted as part of the task.