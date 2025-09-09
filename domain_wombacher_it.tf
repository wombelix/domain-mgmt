# SPDX-FileCopyrightText: 2025 Dominik Wombacher <dominik@wombacher.cc>
#
# SPDX-License-Identifier: MIT

module "wombacher_it" {
  source      = "./modules/domains"
  domain_name = "wombacher.it"
  extra_data = {
    "EU-COUNTRY-OF-CITIZENSHIP" : "DE",
    "VAT-NUMBER" : "DE814816472",
  }
  nameservers = [
    "ns1.wombacher.it",
    "ns2.wombacher.it",
    "ns3.wombacher.it"
  ]
  contacts_registrant = "787984"
  contacts_admin      = "518"
  contacts_tech       = "518"
  contacts_billing    = "0"
  soa_mail            = "hostmaster@wombacher.it"
  caa_iodef_mailto    = "team@wombacher.it"
}
