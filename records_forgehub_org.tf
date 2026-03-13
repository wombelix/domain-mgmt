# SPDX-FileCopyrightText: 2026 Dominik Wombacher <dominik@wombacher.cc>
#
# SPDX-License-Identifier: Apache-2.0

# TXT Records
resource "inwx_nameserver_record" "forgehub_org_txt_spf" {
  domain  = "forgehub.org"
  name    = "forgehub.org"
  type    = "TXT"
  content = "v=spf1 -all"
  ttl     = 3600
}

resource "inwx_nameserver_record" "forgehub_org_txt_dmarc" {
  domain  = "forgehub.org"
  name    = "_dmarc.forgehub.org"
  type    = "TXT"
  content = "v=DMARC1; p=reject; sp=reject; adkim=s; aspf=s; pct=100"
  ttl     = 3600
}
