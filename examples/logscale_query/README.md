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
