# 🧩 Terraform Task — Create AWS Key Pair (nautilus-kp)

## 📘 Overview

The Nautilus DevOps team is migrating their infrastructure to AWS and aims to manage this migration in smaller, incremental phases.
In this task, you will create an **AWS key pair** using **Terraform** to securely manage access to EC2 instances.

---

## 🎯 Task Objective

Create a key pair named **`nautilus-kp`** using Terraform with the following conditions:

* **Key type:** RSA
* **Private key file path:** `/home/bob/nautilus-kp.pem`
* **Terraform working directory:** `/home/bob/terraform`
* **Terraform configuration file:** `main.tf`

---

## 🛠️ Terraform Configuration

### File: `main.tf`

```hcl
# Step 1: Generate an RSA private key
resource "tls_private_key" "nautilus_pk" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

# Step 2: Create AWS key pair using the generated public key
resource "aws_key_pair" "nautilus_kp" {
  key_name   = "nautilus-kp"
  public_key = tls_private_key.nautilus_pk.public_key_openssh
}

# Step 3: Save the private key locally
resource "local_file" "save_private_key" {
  content  = tls_private_key.nautilus_pk.private_key_pem
  filename = "/home/bob/nautilus-kp.pem"
}
```

---

## 🚀 Steps to Execute

1. **Navigate to the Terraform directory:**

   ```bash
   cd /home/bob/terraform
   ```

2. **Initialize Terraform:**

   ```bash
   terraform init
   ```

3. **Validate the configuration:**

   ```bash
   terraform validate
   ```

4. **Apply the configuration to create the key pair:**

   ```bash
   terraform apply -auto-approve
   ```

5. **Verify the key file is generated:**

   ```bash
   ls -l /home/bob/nautilus-kp.pem
   ```

---

## 🧾 Output

After successful execution:

* A new **AWS key pair** named `nautilus-kp` will be created.
* The corresponding **private key file** will be saved at `/home/bob/nautilus-kp.pem`.

---

## 🧹 Cleanup (Optional)

To delete the created resources:

```bash
terraform destroy -auto-approve
```

---

## 📎 Notes

* Ensure that your AWS credentials are correctly configured (`~/.aws/credentials` or environment variables).
* The `.pem` file contains sensitive data — adjust file permissions:

  ```bash
  chmod 400 /home/bob/nautilus-kp.pem
  ```
* Always run Terraform commands from `/home/bob/terraform` as instructed.
