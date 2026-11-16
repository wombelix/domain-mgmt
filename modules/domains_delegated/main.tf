# SPDX-FileCopyrightText: 2026 Dominik Wombacher <dominik@wombacher.cc>
#
# SPDX-License-Identifier: Apache-2.0

# domain registered at INWX with DNS hosted elsewhere
resource "inwx_domain" "tld" {
  name          = var.domain_name
  nameservers   = var.nameservers
  period        = var.registration_period
  renewal_mode  = var.renewal_mode
  transfer_lock = var.transfer_lock
  contacts {
    registrant = var.contacts_registrant
    admin      = var.contacts_admin
    tech       = var.contacts_tech
    billing    = var.contacts_billing
  }
  extra_data = var.extra_data
  lifecycle {
    destroy = false # never call domain.delete at INWX in delegated module
  }
}

# DS at the registry for the zone signed by the DNS provider
resource "inwx_dnssec_key" "tld" {
  count = var.dnssec_key == null ? 0 : 1

  domain     = inwx_domain.tld.name
  public_key = var.dnssec_key.public_key
  algorithm  = var.dnssec_key.algorithm
}
