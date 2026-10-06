# Secure Modular Terraform Infrastructure

A secure and modular Infrastructure as Code (IaC) project using Terraform, AWS, and GitHub Actions. The project demonstrates reusable Terraform modules, remote state management, AWS OIDC authentication, infrastructure security scanning, and automated Terraform planning.

## Architecture

GitHub Repository
        |
        v
GitHub Actions
        |
        | AWS OIDC
        v
AWS IAM Role
        |
        v
Terraform
        |
        +-------------------+
        |                   |
        v                   v
   Amazon S3            AWS VPC
 Remote State          Infrastructure
        |                   |
        |             +-----+-----+
        |             |           |
        |             v           v
        |          Subnets    Security Group
        |
        v
Terraform State Lock

## Technologies

- Terraform
- AWS
- Amazon VPC
- Amazon S3
- AWS IAM
- GitHub Actions
- GitHub OIDC
- Checkov
- Git

## Project Structure

```text
secure-modular-terraform/
├── .github/
│   └── workflows/
│       └── terraform.yml
├── environments/
│   └── dev/
│       ├── backend.tf
│       ├── main.tf
│       ├── outputs.tf
│       ├── provider.tf
│       ├── variables.tf
│       └── versions.tf
├── modules/
│   ├── ec2/
│   ├── security-group/
│   ├── secrets-manager/
│   └── vpc/
├── .gitignore
└── README.md