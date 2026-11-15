# SPDX-FileCopyrightText: 2026 Dominik Wombacher <dominik@wombacher.cc>
#
# SPDX-License-Identifier: Apache-2.0

module "wombacher_dev" {
  source      = "./modules/domains"
  domain_name = "wombacher.dev"
  extra_data = {
    "ACKNOWLEDGE-SECURE-ONLY-DEV" = "1"
  }
  # .dev domain doesn't seem to have admin and billig contact anymore
  # set to 0 to avoid constant changes on apply
  contacts_admin   = "0"
  contacts_billing = "0"
  caa_ttl          = 300
  automated_dnssec = false
}

resource "cloudflare_zone" "wombacher_dev" {
  account = {
    id = var.cloudflare_account_id
  }
  name = "wombacher.dev"
  type = "full"
}
