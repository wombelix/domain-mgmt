# SPDX-FileCopyrightText: 2026 Dominik Wombacher <dominik@wombacher.cc>
#
# SPDX-License-Identifier: Apache-2.0

# cloudflare zone
resource "cloudflare_zone" "zone" {
  account = {
    id = var.account_id
  }
  name = var.domain_name
  type = "full"
}

# cloudflare default records
resource "cloudflare_dns_record" "caa_issue" {
  zone_id = cloudflare_zone.zone.id
  name    = var.domain_name
  type    = "CAA"
  ttl     = var.caa_ttl
  data = {
    flags = 0
    tag   = "issue"
    value = "letsencrypt.org"
  }
}

resource "cloudflare_dns_record" "caa_issuewild" {
  zone_id = cloudflare_zone.zone.id
  name    = var.domain_name
  type    = "CAA"
  ttl     = var.caa_ttl
  data = {
    flags = 0
    tag   = "issuewild"
    value = "letsencrypt.org"
  }
}

resource "cloudflare_dns_record" "caa_iodef" {
  zone_id = cloudflare_zone.zone.id
  name    = var.domain_name
  type    = "CAA"
  ttl     = var.caa_ttl
  data = {
    flags = 0
    tag   = "iodef"
    value = "mailto:${var.caa_iodef_mailto}"
  }
}

# DNSSEC signing, the DS at the registrar is set outside this module
resource "cloudflare_zone_dnssec" "zone" {
  count = var.dnssec ? 1 : 0

  zone_id = cloudflare_zone.zone.id
  status  = "active"
}
