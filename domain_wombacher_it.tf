# SPDX-FileCopyrightText: 2025 Dominik Wombacher <dominik@wombacher.cc>
#
# SPDX-License-Identifier: MIT

module "wombacher_it" {
  source              = "./modules/domains"
  domain_name         = "wombacher.it"
  automated_dnssec    = false
  contacts_registrant = "787984"
  contacts_billing    = "0"
  extra_data = {
    "EU-COUNTRY-OF-CITIZENSHIP" : "DE",
    "VAT-NUMBER" : "DE814816472",
  }
}
