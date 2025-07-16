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
