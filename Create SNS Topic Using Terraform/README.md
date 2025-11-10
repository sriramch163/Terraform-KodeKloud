# Create SNS Topic Using Terraform

## Objective

The objective of this task is to create an Amazon SNS topic named `nautilus-notifications` using Terraform. This topic will be used by the Nautilus DevOps team for sending notifications to subscribers, supporting communication and alerting in their AWS infrastructure.

## Architecture

This Terraform configuration creates:
- An SNS topic for pub/sub messaging
- Foundation for notification and alerting system
- Scalable communication hub for multiple subscribers
- Integration point for AWS services and applications

## Prerequisites

- AWS CLI configured with appropriate credentials
- Terraform installed (version 0.12+)
- AWS provider configured
- SNS permissions for topic creation

## Configuration Details

### SNS Topic Specifications

| Parameter | Value | Description |
|-----------|-------|-------------|
| **Topic Name** | `nautilus-notifications` | Unique SNS topic identifier |
| **Resource Name** | `nautilus-notifications` | Terraform resource reference |

### Topic Features

- **Pub/Sub Messaging** - One-to-many message delivery
- **Multiple Protocols** - Email, SMS, HTTP, Lambda, SQS
- **Reliable Delivery** - Built-in retry mechanisms
- **Scalable** - Handle millions of messages

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

4. **Verify the topic**
   - Check AWS SNS console
   - Topic should appear in Topics list

## Notification Use Cases

Perfect for:
- Infrastructure alerts and monitoring
- Application error notifications
- Deployment status updates
- Security incident alerts
- System health notifications
- Automated workflow triggers

## Supported Protocols

- **Email** - Send notifications to email addresses
- **SMS** - Text message alerts
- **HTTP/HTTPS** - Webhook notifications
- **AWS Lambda** - Trigger serverless functions
- **Amazon SQS** - Queue messages for processing
- **Mobile Push** - iOS/Android notifications

## Post-Creation Steps

After creating the topic:
1. **Add Subscriptions** - Configure email, SMS, or other endpoints
2. **Set Permissions** - Define who can publish to the topic
3. **Configure Filters** - Set message filtering for subscribers
4. **Test Notifications** - Verify message delivery

## Example Usage

```bash
# Publish a test message (after creation)
aws sns publish \
  --topic-arn arn:aws:sns:region:account:nautilus-notifications \
  --message "Test notification from DevOps team"
```

## Integration Examples

- **CloudWatch Alarms** → SNS Topic → Email/SMS
- **Lambda Functions** → SNS Topic → Multiple Subscribers
- **Application Logs** → SNS Topic → Slack/Teams

## Files

- `main.tf` - Contains SNS topic resource configuration

## Cleanup

To remove the SNS topic:
```bash
terraform destroy
```

**Note**: Remove all subscriptions before deleting the topic.

## Next Steps

Consider adding:
- Topic subscriptions for team members
- Message filtering policies
- Dead letter queues for failed deliveries
- CloudWatch monitoring and metrics