# Example: S3 Cross-Account Backup

This example sets up an S3 bucket and a bucket policy in the destination account that allows a source account to write backups securely.

## Requirements

- AWS credentials for both accounts (assume-role or multiple profiles recommended)
- Region set via CLI or TF variables

## Usage

```bash
terraform init
terraform plan
terraform apply
