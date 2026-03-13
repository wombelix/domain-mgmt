# SPDX-FileCopyrightText: 2026 Dominik Wombacher <dominik@wombacher.cc>
#
# SPDX-License-Identifier: Apache-2.0

# CNAME Records
resource "inwx_nameserver_record" "xlii_cc_cname_hub" {
  domain  = "xlii.cc"
  name    = "hub.xlii.cc"
  type    = "CNAME"
  content = "nx31812.your-storageshare.de"
  ttl     = 300
}

# TXT Records
resource "inwx_nameserver_record" "xlii_cc_txt_spf" {
  domain  = "xlii.cc"
  name    = "xlii.cc"
  type    = "TXT"
  content = "v=spf1 -all"
  ttl     = 3600
}

resource "inwx_nameserver_record" "xlii_cc_txt_dmarc" {
  domain  = "xlii.cc"
  name    = "_dmarc.xlii.cc"
  type    = "TXT"
  content = "v=DMARC1; p=reject; sp=reject; adkim=s; aspf=s; pct=100"
  ttl     = 3600
}
