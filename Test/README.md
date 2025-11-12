# Terraform Certification Exam

## Overview

This directory contains the certification exam questions and solutions for Terraform proficiency testing. The exam consists of 5 tests with multiple questions each, covering various Terraform concepts and AWS resource management.

## Prerequisites

- AWS CLI configured with appropriate credentials
- Terraform installed (version 0.12+)
- Basic understanding of AWS services
- Familiarity with Infrastructure as Code concepts

## Directory Structure

```
Test/
├── t1q1/          # Test 1, Question 1
│   ├── main.tf
│   └── Task.png
├── t1q2/          # Test 1, Question 2
│   ├── main.tf
│   └── Task.png
├── t2q1/          # Test 2, Question 1
│   ├── main.tf
│   └── Task.png
├── t2q4/          # Test 2, Question 4
│   ├── main.tf
│   ├── Task.png
│   └── variables.tf
├── t3q1/          # Test 3, Question 1
│   ├── main.tf
│   └── Task.png
├── t3q3/          # Test 3, Question 3
│   ├── main.tf
│   └── Task.png
├── t4q1/          # Test 4, Question 1
│   ├── main.tf
│   └── Task.png
├── t4q2/          # Test 4, Question 2
│   ├── main.tf
│   └── Task.png
├── t5q1/          # Test 5, Question 1
│   ├── main.tf
│   └── Task.png
├── t5q2/          # Test 5, Question 2
│   ├── main.tf
│   └── Task.png
└── README.md      # This file
```

## Exam Structure

| Test | Questions | Topics Covered |
|------|-----------|----------------|
| **Test 1** | 2 | Basic Terraform concepts |
| **Test 2** | 2+ | Variables and configuration |
| **Test 3** | 2+ | Resource management |
| **Test 4** | 2 | Advanced configurations |
| **Test 5** | 2 | Complex scenarios |

## Usage

1. **Navigate to specific test question:**
   ```bash
   cd t1q1  # Example for Test 1, Question 1
   ```

2. **Review task requirements:**
   - Check `Task.png` for question details
   - Review existing `main.tf` if provided

3. **Run Terraform commands:**
   ```bash
   terraform init
   terraform plan
   terraform apply
   ```

## Files

- `main.tf` - Terraform configuration for each question
- `variables.tf` - Variable definitions (where applicable)
- `Task.png` - Question description and requirements

## Certification Goals

- Demonstrate Terraform proficiency
- Show AWS resource management skills
- Prove Infrastructure as Code best practices
- Validate problem-solving abilities

## Success Criteria

- All tests must be completed successfully
- Resources must be provisioned correctly
- Code must follow Terraform best practices
- Solutions must be efficient and maintainable