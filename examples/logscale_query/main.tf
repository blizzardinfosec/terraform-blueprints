provider "crowdstrike" {
  client_id     = var.client_id
  client_secret = var.client_secret
}

module "logscale_query" {
  source = "../../modules/crowdstrike_logscale_query"

  name        = "Suspicious Okta MFA Attempts"
  content     = <<EOT
okta_logs
| where outcome.reason = "MFA_FAILED"
| groupBy([user.name], agg=count())
| where count > 5
EOT
  description = "Flags users with more than 5 MFA failures in 10 minutes"
  labels      = ["okta", "mfa", "suspicious"]
}
