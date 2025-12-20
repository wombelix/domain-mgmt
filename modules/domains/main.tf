# SPDX-FileCopyrightText: 2025 Dominik Wombacher <dominik@wombacher.cc>
#
# SPDX-License-Identifier: MIT

# inwx nameserver
resource "inwx_nameserver" "tld" {
  domain      = var.domain_name
  type        = var.nameserver_type
  nameservers = var.nameservers
  soa_mail    = var.soa_mail
  master_ip   = var.master_ip # only used by type SECONDARY
}

# inwx nameserver records
resource "inwx_nameserver_record" "tld_caa_issue" {
  domain  = inwx_nameserver.tld.domain # Records depend on nameserver resource
  name    = inwx_nameserver.tld.domain
  type    = "CAA"
  content = "0 issue \"letsencrypt.org\""
}
resource "inwx_nameserver_record" "tld_caa_issuewild" {
  domain  = inwx_nameserver.tld.domain # Records depend on nameserver resource
  name    = inwx_nameserver.tld.domain
  type    = "CAA"
  content = "0 issuewild \"letsencrypt.org\""
}
resource "inwx_nameserver_record" "tld_caa_iodef" {
  domain  = inwx_nameserver.tld.domain # Records depend on nameserver resource
  name    = inwx_nameserver.tld.domain
  type    = "CAA"
  content = "0 iodef \"mailto:${var.caa_iodef_mailto}\""
}

# inwx domain
resource "inwx_domain" "tld" {
  name          = inwx_nameserver.tld.domain # Make domain dependent on nameserver resource
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
    ignore_changes = []
  }
}

# inwx dnssec
resource "inwx_automated_dnssec" "tld" {
  count = var.automated_dnssec ? 1 : 0

  domain = inwx_domain.tld.name
}
