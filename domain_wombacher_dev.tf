# SPDX-FileCopyrightText: 2026 Dominik Wombacher <dominik@wombacher.cc>
#
# SPDX-License-Identifier: Apache-2.0

module "wombacher_dev" {
  source      = "./modules/domains_delegated"
  domain_name = "wombacher.dev"
  nameservers = module.wombacher_dev_zone.name_servers
  dnssec_key  = module.wombacher_dev_zone.dnssec_key
  extra_data = {
    "ACKNOWLEDGE-SECURE-ONLY-DEV" = "1"
  }
  # .dev domain doesn't seem to have admin and billig contact anymore
  # set to 0 to avoid constant changes on apply
  contacts_admin   = "0"
  contacts_billing = "0"
}

module "wombacher_dev_zone" {
  source      = "./modules/dns_zone_cloudflare"
  account_id  = var.cloudflare_account_id
  domain_name = "wombacher.dev"
  caa_ttl     = 300
}
