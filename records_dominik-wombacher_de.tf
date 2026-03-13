# SPDX-FileCopyrightText: 2026 Dominik Wombacher <dominik@wombacher.cc>
#
# SPDX-License-Identifier: Apache-2.0

resource "inwx_nameserver_record" "dominik_wombacher_de_url_apex" {
  domain            = "dominik-wombacher.de"
  name              = "dominik-wombacher.de"
  type              = "URL"
  content           = "https://dominik.wombacher.cc"
  url_redirect_type = "HEADER301"
  prio              = 301
  ttl               = 3600
}

resource "inwx_nameserver_record" "dominik_wombacher_de_url_www" {
  domain            = "dominik-wombacher.de"
  name              = "www.dominik-wombacher.de"
  type              = "URL"
  content           = "https://dominik.wombacher.cc"
  url_redirect_type = "HEADER301"
  prio              = 301
  ttl               = 3600
}

# TXT Records
resource "inwx_nameserver_record" "dominik_wombacher_de_txt_spf" {
  domain  = "dominik-wombacher.de"
  name    = "dominik-wombacher.de"
  type    = "TXT"
  content = "v=spf1 -all"
  ttl     = 3600
}

resource "inwx_nameserver_record" "dominik_wombacher_de_txt_dmarc" {
  domain  = "dominik-wombacher.de"
  name    = "_dmarc.dominik-wombacher.de"
  type    = "TXT"
  content = "v=DMARC1; p=reject; sp=reject; adkim=s; aspf=s; pct=100"
  ttl     = 3600
}
