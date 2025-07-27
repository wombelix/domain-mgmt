# SPDX-FileCopyrightText: 2025 Dominik Wombacher <dominik@wombacher.cc>
#
# SPDX-License-Identifier: MIT

resource "inwx_nameserver_record" "foxcommerce_de_cname_autoconfig" {
  domain  = "foxcommerce.de"
  name    = "autoconfig.foxcommerce.de"
  type    = "CNAME"
  content = "mailbox.org"
  ttl     = 3600
}

resource "inwx_nameserver_record" "foxcommerce_de_cname_mbo0001_domainkey" {
  domain  = "foxcommerce.de"
  name    = "mbo0001._domainkey.foxcommerce.de"
  type    = "CNAME"
  content = "mbo0001._domainkey.mailbox.org"
  ttl     = 3600
}

resource "inwx_nameserver_record" "foxcommerce_de_cname_mbo0002_domainkey" {
  domain  = "foxcommerce.de"
  name    = "mbo0002._domainkey.foxcommerce.de"
  type    = "CNAME"
  content = "mbo0002._domainkey.mailbox.org"
  ttl     = 3600
}

resource "inwx_nameserver_record" "foxcommerce_de_cname_mbo0003_domainkey" {
  domain  = "foxcommerce.de"
  name    = "mbo0003._domainkey.foxcommerce.de"
  type    = "CNAME"
  content = "mbo0003._domainkey.mailbox.org"
  ttl     = 3600
}

resource "inwx_nameserver_record" "foxcommerce_de_cname_mbo0004_domainkey" {
  domain  = "foxcommerce.de"
  name    = "mbo0004._domainkey.foxcommerce.de"
  type    = "CNAME"
  content = "mbo0004._domainkey.mailbox.org"
  ttl     = 3600
}

resource "inwx_nameserver_record" "foxcommerce_de_mx_1" {
  domain  = "foxcommerce.de"
  name    = "foxcommerce.de"
  type    = "MX"
  prio    = 10
  content = "mxext1.mailbox.org"
  ttl     = 3600
}

resource "inwx_nameserver_record" "foxcommerce_de_mx_2" {
  domain  = "foxcommerce.de"
  name    = "foxcommerce.de"
  type    = "MX"
  prio    = 10
  content = "mxext2.mailbox.org"
  ttl     = 3600
}

resource "inwx_nameserver_record" "foxcommerce_de_mx_3" {
  domain  = "foxcommerce.de"
  name    = "foxcommerce.de"
  type    = "MX"
  prio    = 20
  content = "mxext3.mailbox.org"
  ttl     = 3600
}

resource "inwx_nameserver_record" "foxcommerce_de_srv_autodiscover_tcp" {
  domain  = "foxcommerce.de"
  name    = "_autodiscover._tcp.foxcommerce.de"
  type    = "SRV"
  content = "0 443 mailbox.org"
  ttl     = 3600
}

resource "inwx_nameserver_record" "foxcommerce_de_txt_spf" {
  domain  = "foxcommerce.de"
  name    = "foxcommerce.de"
  type    = "TXT"
  content = "spf1 mx ~all"
  ttl     = 3600
}

resource "inwx_nameserver_record" "foxcommerce_de_txt_dmarc" {
  domain  = "foxcommerce.de"
  name    = "_dmarc.foxcommerce.de"
  type    = "TXT"
  content = "v=DMARC1; p=none; rua=mailto:postmaster@foxcommerce.de; rf=afrf; sp=none; fo=1; ri=86400; adkim=r; aspf=r"
  ttl     = 3600
}

resource "inwx_nameserver_record" "foxcommerce_de_txt_f4f894d6eeb9f9315ceb308f42f30aaee5e042f5" {
  domain  = "foxcommerce.de"
  name    = "f4f894d6eeb9f9315ceb308f42f30aaee5e042f5.foxcommerce.de"
  type    = "TXT"
  content = "520ac5797394a8069a6569e1004791737584f525"
  ttl     = 3600
}
