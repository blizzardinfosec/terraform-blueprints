# Terraform Blueprints

Welcome to the **Terraform Blueprints** repository — a curated collection of modular, reusable, and production-ready Terraform configurations built to showcase real-world infrastructure automation, cloud security, and DevOps best practices.

---

## 📦 Modules Included

| Module                       | Description                                                                 |
|-----------------------------|-----------------------------------------------------------------------------|
| `crowdstrike_logscale_query` | Deploy LogScale queries via the CrowdStrike Terraform provider              |
| `s3_cross_account_backup`   | Enable secure S3 cross-account backups using roles and bucket policies      |
| `vpc_baseline`              | Provision a baseline VPC with subnets, route tables, and NAT configuration |
| `iam_assume_role`           | Create IAM roles with trust relationships for secure cross-account access   |

---

## 🛠 Usage

Each module is self-contained and can be used independently. Example configurations for each module are available in the `examples/` folder.

### Example: S3 Cross-Account Backup
```hcl
module "s3_backup" {
  source = "../modules/s3_cross_account_backup"

  source_account_id      = "111111111111"
  destination_account_id = "222222222222"
  bucket_name            = "my-backup-bucket"
  region                 = "us-west-2"
}
```

---

## ✅ CI/CD Pipeline

This repo includes a GitHub Actions workflow to automatically:
- Initialize Terraform
- Format code (`terraform fmt`)
- Validate configs (`terraform validate`)
- Run `terraform plan` on pull requests

You’ll find the workflow under `.github/workflows/terraform-ci.yml`.

---

## 📚 Requirements

- Terraform >= 1.4
- AWS CLI / credentials if running AWS modules
- CrowdStrike Terraform Provider (for LogScale module)

---

## 🧠 About

These blueprints are developed and maintained by [Matthew Blizzard](https://github.com/blizzardinfosec), a Senior Security Engineer and Detection-as-Code advocate, to demonstrate expertise in:

- Infrastructure as Code (IaC)
- Security automation
- Multi-cloud and endpoint detection
- CI/CD DevOps workflows

---

Feel free to fork, improve, and adapt these blueprints for your own cloud and security infrastructure. PRs welcome!
