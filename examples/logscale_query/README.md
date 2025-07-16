# Example: CrowdStrike LogScale Query

This example deploys a saved LogScale query that detects users with repeated MFA failures using the CrowdStrike Terraform provider.

## Requirements

- CrowdStrike API credentials (`client_id` and `client_secret`)
- Access to Falcon LogScale environment

## Usage

```bash
terraform init
terraform plan
terraform apply

---

## ✅ `examples/cross_account_s3/main.tf`

```hcl
provider "aws" {
  region = var.region
}

module "s3_cross_account_backup" {
  source = "../../modules/s3_cross_account_backup"

  source_account_id      = "111122223333"
  destination_account_id = "444455556666"
  bucket_name            = "example-cross-account-backups"
  region                 = var.region
}
