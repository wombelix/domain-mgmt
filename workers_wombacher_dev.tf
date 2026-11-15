# SPDX-FileCopyrightText: 2026 Dominik Wombacher <dominik@wombacher.cc>
#
# SPDX-License-Identifier: Apache-2.0

# OIDC issuer documents for our own token issuers, one folder per issuer
resource "cloudflare_workers_script" "oidc_wombacher_dev" {
  account_id  = var.cloudflare_account_id
  script_name = "oidc-wombacher-dev"

  assets = {
    directory = "${path.root}/static/oidc.wombacher.dev"
    config = {
      # Files have no extension, so the upload sets no Content-Type
      headers = <<-EOT
        /*
          Content-Type: application/json
        EOT
    }
  }
}

resource "cloudflare_workers_custom_domain" "oidc_wombacher_dev" {
  account_id = var.cloudflare_account_id
  hostname   = "oidc.wombacher.dev"
  service    = cloudflare_workers_script.oidc_wombacher_dev.script_name
  zone_id    = module.wombacher_dev_zone.zone_id
}

# Bot Fight Mode can't be skipped per hostname and could block the AWS STS fetch
resource "cloudflare_bot_management" "wombacher_dev" {
  zone_id    = module.wombacher_dev_zone.zone_id
  fight_mode = false
}
