# SPDX-FileCopyrightText: 2025 Dominik Wombacher <dominik@wombacher.cc>
#
# SPDX-License-Identifier: MIT

module "mycloudoffice_de" {
  source           = "./modules/domains"
  domain_name      = "mycloudoffice.de"
  automated_dnssec = false
  nameservers = [
    "ns1.wombacher.it",
    "ns2.wombacher.it",
    "ns3.wombacher.it"
  ]
  soa_mail         = "hostmaster@wombacher.it"
  caa_iodef_mailto = "team@wombacher.it"
  renewal_mode     = "AUTODELETE"
}
