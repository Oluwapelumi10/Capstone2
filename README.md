# Capstone2: AWS Infrastructure for Client Management System (CMS)

This project uses Terraform to provision and manage the complete cloud infrastructure required to host a **Client Management System** on AWS. It's designed with modularity, scalability, and reusability in mind following best practices with separate modules for each core AWS resource.

---

## 🧩 Project Structure

The project is organized into reusable modules and individual resource configurations:

### 🔁 Modules:
- `aws_key_pair_module`
- `ec2_module`
- `eip_module`
- `internet_gateway_module`
- `nat_gateway_module`
- `route_table_module`
- `s3_bucket_module`
- `security_group_module`
- `subnet_module`
- `vpc_module`

Each module encapsulates the logic for creating specific AWS components, keeping the code clean and scalable.

### 🧾 Root Configuration Files:
- `aws_provider.tf` – AWS provider settings
- `backend.tf` – Remote state configuration
- `variables.tf` – Input variables used across the setup
- `vpc.tf` – VPC resource setup
- `subnet.tf`, `route_table.tf`, `internet_gateway.tf`, `nat_gateway.tf` – Networking configuration
- `security_group.tf` – Firewall rules
- `ec2.tf`, `aws_key_pair.tf`, `eip.tf` – EC2 instance provisioning
- `s3_bucket.tf` – Storage setup for logs or static assets

---

## 🚀 What This Project Does

✅ Provisions a secure and scalable VPC with public/private subnets  
✅ Configures EC2 instances to host the application  
✅ Sets up NAT and Internet Gateways for routing  
✅ Creates an S3 bucket (e.g., for logs or backups)  
✅ Defines Security Groups for controlled access  
✅ Modular design to encourage reuse and easy modification  

---

## 🛠️ Getting Started

### Prerequisites
- Terraform installed (`v1.0+`)
- AWS CLI configured (`aws configure`)
- An active AWS account with IAM permissions to create the necessary resources

### Usage

```
# Initialize the project
terraform init

# Preview changes
terraform plan

# Apply infrastructure
terraform apply

```
