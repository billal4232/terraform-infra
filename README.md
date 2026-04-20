# terraform-infra

Production-grade AWS infrastructure built with Terraform, using a modular approach for multi-environment deployments.

---

## Architecture

- VPC with public and private subnets across 2 Availability Zones
- Application Load Balancer in public subnets facing the internet
- Auto Scaling Group managing EC2 instances in private subnets
- NAT Gateway for outbound internet access from private subnets
- Remote state stored in S3 with DynamoDB locking

---

## Project Structure

```
terraform-infra/
├── modules/
│   └── vpc/          # Reusable VPC module
├── dev/              # Development environment
├── prod/             # Production environment
└── README.md
```

---

## Prerequisites

- Terraform >= 1.0
- AWS CLI v2 configured with appropriate profile
- S3 bucket and DynamoDB table for remote state backend

---

## Usage

```bash
# Navigate to the environment you want to deploy
cd dev/        # or prod/

# Initialise Terraform and connect to remote backend
terraform init

# Preview changes
terraform plan

# Apply changes
terraform apply
```

---

## Environments

| Environment | VPC CIDR | State Key |
|-------------|----------|-----------|
| dev | 10.0.0.0/16 | dev/terraform.tfstate |
| prod | 10.1.0.0/16 | prod/terraform.tfstate |

---

## Author

Limon — [github.com/billal4232](https://github.com/billal4232)