# SPDX-FileCopyrightText: 2025 Dominik Wombacher <dominik@wombacher.cc>
#
# SPDX-License-Identifier: MIT

resource "inwx_nameserver_record" "mycloudoffice_de_cname_autoconfig" {
  domain  = "mycloudoffice.de"
  name    = "autoconfig.mycloudoffice.de"
  type    = "CNAME"
  content = "mailbox.org"
  ttl     = 3600
}

resource "inwx_nameserver_record" "mycloudoffice_de_cname_mbo0001_domainkey" {
  domain  = "mycloudoffice.de"
  name    = "mbo0001._domainkey.mycloudoffice.de"
  type    = "CNAME"
  content = "mbo0001._domainkey.mailbox.org"
  ttl     = 3600
}

resource "inwx_nameserver_record" "mycloudoffice_de_cname_mbo0002_domainkey" {
  domain  = "mycloudoffice.de"
  name    = "mbo0002._domainkey.mycloudoffice.de"
  type    = "CNAME"
  content = "mbo0002._domainkey.mailbox.org"
  ttl     = 3600
}

resource "inwx_nameserver_record" "mycloudoffice_de_cname_mbo0003_domainkey" {
  domain  = "mycloudoffice.de"
  name    = "mbo0003._domainkey.mycloudoffice.de"
  type    = "CNAME"
  content = "mbo0003._domainkey.mailbox.org"
  ttl     = 3600
}

resource "inwx_nameserver_record" "mycloudoffice_de_cname_mbo0004_domainkey" {
  domain  = "mycloudoffice.de"
  name    = "mbo0004._domainkey.mycloudoffice.de"
  type    = "CNAME"
  content = "mbo0004._domainkey.mailbox.org"
  ttl     = 3600
}

resource "inwx_nameserver_record" "mycloudoffice_de_mx_1" {
  domain  = "mycloudoffice.de"
  type    = "MX"
  prio    = 10
  content = "mxext1.mailbox.org"
  ttl     = 3600
}

resource "inwx_nameserver_record" "mycloudoffice_de_mx_2" {
  domain  = "mycloudoffice.de"
  type    = "MX"
  prio    = 10
  content = "mxext2.mailbox.org"
  ttl     = 3600
}

resource "inwx_nameserver_record" "mycloudoffice_de_mx_3" {
  domain  = "mycloudoffice.de"
  type    = "MX"
  prio    = 20
  content = "mxext3.mailbox.org"
  ttl     = 3600
}

resource "inwx_nameserver_record" "mycloudoffice_de_srv_autodiscover_tcp" {
  domain  = "mycloudoffice.de"
  name    = "_autodiscover._tcp.mycloudoffice.de"
  type    = "SRV"
  content = "0 443 mailbox.org"
  ttl     = 3600
}

resource "inwx_nameserver_record" "mycloudoffice_de_txt_spf" {
  domain  = "mycloudoffice.de"
  type    = "TXT"
  content = "v=spf1 include:mailbox.org mx ~all"
  ttl     = 3600
}

resource "inwx_nameserver_record" "mycloudoffice_de_txt_dmarc" {
  domain  = "mycloudoffice.de"
  name    = "_dmarc.mycloudoffice.de"
  type    = "TXT"
  content = "v=DMARC1; p=none; rua=mailto:postmaster@mycloudoffice.de; rf=afrf; sp=none; fo=1; ri=86400; adkim=r; aspf=r"
  ttl     = 3600
}

resource "inwx_nameserver_record" "mycloudoffice_de_txt_f4f894d6eeb9f9315ceb308f42f30aaee5e042f5" {
  domain  = "mycloudoffice.de"
  name    = "f4f894d6eeb9f9315ceb308f42f30aaee5e042f5.mycloudoffice.de"
  type    = "TXT"
  content = "03c65c580c4c4a74e1d9cdc154ae1990c76bb058"
  ttl     = 3600
}
