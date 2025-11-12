# Terraform AWS Infrastructure Learning Repository

## 🎯 Overview

This repository contains a comprehensive collection of Terraform exercises and solutions from KodeKloud's Terraform course. It demonstrates Infrastructure as Code (IaC) best practices for AWS resource management, covering everything from basic EC2 instances to complex multi-service architectures.

## 📚 Learning Objectives

- Master Terraform fundamentals and advanced concepts
- Implement AWS infrastructure using declarative configuration
- Practice Infrastructure as Code best practices
- Develop skills in cloud resource management and automation
- Prepare for Terraform certification and real-world scenarios

## 🏗️ Repository Structure

### Core AWS Services Covered

| Category | Services | Exercise Count |
|----------|----------|----------------|
| **Compute** | EC2, AMI, Key Pairs | 6 exercises |
| **Storage** | S3, EBS, Snapshots | 8 exercises |
| **Networking** | VPC, Security Groups, Elastic IP | 8 exercises |
| **Identity & Access** | IAM Users, Groups, Policies, Roles | 6 exercises |
| **Monitoring** | CloudWatch, SNS, Alarms | 3 exercises |
| **Database** | DynamoDB | 1 exercise |
| **Streaming** | Kinesis | 1 exercise |
| **Search** | OpenSearch | 1 exercise |
| **Security** | Secrets Manager, SSM | 2 exercises |
| **Infrastructure** | CloudFormation | 1 exercise |

### Directory Organization

```
Terraform-KodeKloud/
├── 📁 Compute Resources/
│   ├── Create EC2 Instance Using Terraform/
│   ├── Change Instance Type Using Terraform/
│   ├── Create AMI Using Terraform/
│   ├── Create Key Pair Using Terraform/
│   ├── Attach Elastic IP Using Terraform/
│   └── Delete EC2 Instance Using Terraform/
├── 📁 Storage Solutions/
│   ├── Create EBS Volume Using Terraform/
│   ├── Create Snapshot Using Terraform/
│   ├── Create Public S3 Bucket Using Terraform/
│   ├── Create Private S3 Bucket Using Terraform/
│   ├── Enable S3 Versioning Using Terraform/
│   ├── Copy Data to S3 Using Terraform/
│   └── Delete Backup from S3 Using Terraform/
├── 📁 Networking & Security/
│   ├── Create VPC Using Terraform/
│   ├── Create VPC with CIDR Using Terraform/
│   ├── Create VPC with IPv6 Using Terraform/
│   ├── Create Security Group Using Terraform/
│   ├── Create Elastic IP Using Terraform/
│   └── Delete VPC Using Terraform/
├── 📁 Identity & Access Management/
│   ├── Create IAM User Using Terraform/
│   ├── Create IAM Group Using Terraform/
│   ├── Create IAM Policy Using Terraform/
│   ├── Attach Policy Using Terraform/
│   ├── Delete IAM Group Using Terraform/
│   └── Delete IAM Role Using Terraform/
├── 📁 Variable Management/
│   ├── User Variable Setup Using Terraform/
│   ├── Policy Variable Setup Using Terraform/
│   ├── Role Variable Setup Using Terraform/
│   ├── Security Group Variable Setup Using Terraform/
│   ├── VPC Variable Setup Using Terraform/
│   └── Elastic IP Variable Setup Using Terraform/
├── 📁 Advanced Services/
│   ├── Create DynamoDB Table Using Terraform/
│   ├── Create Kinesis Stream Using Terraform/
│   ├── OpenSearch Setup Using Terraform/
│   ├── Secrets Manager Setup Using Terraform/
│   ├── Create SSM Parameter Using Terraform/
│   └── CloudFormation Template Deployment Using Terraform/
├── 📁 Monitoring & Alerting/
│   ├── CloudWatch Setup Using Terraform/
│   ├── Create Alarm Using Terraform/
│   └── Create SNS Topic Using Terraform/
└── 📁 Test/
    └── Certification exam questions and solutions
```

## 🚀 Quick Start

### Prerequisites

- **AWS CLI** configured with appropriate credentials
- **Terraform** installed (version 0.12+)
- **AWS Account** with necessary permissions
- Basic understanding of cloud computing concepts

### Setup Instructions

1. **Clone or download this repository**
2. **Configure AWS credentials:**
   ```bash
   aws configure
   ```
3. **Navigate to any exercise directory:**
   ```bash
   cd "Create EC2 Instance Using Terraform"
   ```
4. **Run Terraform commands:**
   ```bash
   terraform init
   terraform plan
   terraform apply
   ```

## 📖 Exercise Structure

Each exercise directory contains:

- **`main.tf`** - Primary Terraform configuration
- **`variables.tf`** - Variable definitions (where applicable)
- **`README.md`** - Detailed exercise documentation
- **Task images** - Visual reference for requirements
- **Screenshots** - Expected outcomes and verification

## 🎓 Learning Path

### Beginner Level
1. Start with basic EC2 and S3 exercises
2. Learn VPC and networking fundamentals
3. Practice IAM user and policy creation

### Intermediate Level
1. Explore variable management techniques
2. Work with advanced AWS services (DynamoDB, Kinesis)
3. Implement monitoring and alerting solutions

### Advanced Level
1. Complete certification test scenarios
2. Practice resource deletion and cleanup
3. Master complex multi-service deployments

## 🔧 Key Features

- **Comprehensive Coverage**: 40+ hands-on exercises
- **Real-world Scenarios**: Practical AWS infrastructure patterns
- **Best Practices**: Industry-standard Terraform configurations
- **Variable Management**: Dynamic and reusable infrastructure code
- **Documentation**: Detailed explanations and verification steps
- **Certification Prep**: Practice tests and exam scenarios

## 📊 Skills Developed

- Infrastructure as Code (IaC) principles
- AWS service integration and management
- Terraform state management and workflows
- Resource lifecycle management
- Security and compliance best practices
- Cost optimization strategies
- Troubleshooting and debugging techniques

## 🔍 Verification & Testing

Each exercise includes:
- Step-by-step verification instructions
- AWS Console validation steps
- Expected output examples
- Troubleshooting guidance
- Cleanup procedures

## 🧹 Resource Management

**Important**: Always run `terraform destroy` after completing exercises to avoid unnecessary AWS charges:

```bash
terraform destroy
```

## 📝 Certification Preparation

The **Test/** directory contains:
- 5 comprehensive test scenarios
- Multiple-choice and practical questions
- Real exam-style challenges
- Solutions and explanations

## 🤝 Contributing

This repository serves as a learning resource. Feel free to:
- Add improvements to existing configurations
- Include additional verification steps
- Enhance documentation
- Share alternative solutions

## 📄 License

This repository is for educational purposes as part of KodeKloud's Terraform learning curriculum.

## 🔗 Resources

- [Terraform Documentation](https://www.terraform.io/docs)
- [AWS Provider Documentation](https://registry.terraform.io/providers/hashicorp/aws/latest/docs)
- [KodeKloud Terraform Course](https://kodekloud.com)
- [AWS Free Tier](https://aws.amazon.com/free/)

---

**Happy Learning! 🚀**

*Master Infrastructure as Code with hands-on AWS and Terraform practice*