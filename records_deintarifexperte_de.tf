# SPDX-FileCopyrightText: 2025 Dominik Wombacher <dominik@wombacher.cc>
#
# SPDX-License-Identifier: MIT

resource "inwx_nameserver_record" "deintarifexperte_de_cname_autoconfig" {
  domain  = "deintarifexperte.de"
  name    = "autoconfig.deintarifexperte.de"
  type    = "CNAME"
  content = "mailbox.org"
  ttl     = 3600
}

resource "inwx_nameserver_record" "deintarifexperte_de_cname_mbo0001_domainkey" {
  domain  = "deintarifexperte.de"
  name    = "mbo0001._domainkey.deintarifexperte.de"
  type    = "CNAME"
  content = "mbo0001._domainkey.mailbox.org"
  ttl     = 3600
}

resource "inwx_nameserver_record" "deintarifexperte_de_cname_mbo0002_domainkey" {
  domain  = "deintarifexperte.de"
  name    = "mbo0002._domainkey.deintarifexperte.de"
  type    = "CNAME"
  content = "mbo0002._domainkey.mailbox.org"
  ttl     = 3600
}

resource "inwx_nameserver_record" "deintarifexperte_de_cname_mbo0003_domainkey" {
  domain  = "deintarifexperte.de"
  name    = "mbo0003._domainkey.deintarifexperte.de"
  type    = "CNAME"
  content = "mbo0003._domainkey.mailbox.org"
  ttl     = 3600
}

resource "inwx_nameserver_record" "deintarifexperte_de_cname_mbo0004_domainkey" {
  domain  = "deintarifexperte.de"
  name    = "mbo0004._domainkey.deintarifexperte.de"
  type    = "CNAME"
  content = "mbo0004._domainkey.mailbox.org"
  ttl     = 3600
}

resource "inwx_nameserver_record" "deintarifexperte_de_mx_1" {
  domain  = "deintarifexperte.de"
  name    = "deintarifexperte.de"
  type    = "MX"
  prio    = 10
  content = "mxext1.mailbox.org"
  ttl     = 3600
}

resource "inwx_nameserver_record" "deintarifexperte_de_mx_2" {
  domain  = "deintarifexperte.de"
  name    = "deintarifexperte.de"
  type    = "MX"
  prio    = 10
  content = "mxext2.mailbox.org"
  ttl     = 3600
}

resource "inwx_nameserver_record" "deintarifexperte_de_mx_3" {
  domain  = "deintarifexperte.de"
  name    = "deintarifexperte.de"
  type    = "MX"
  prio    = 20
  content = "mxext3.mailbox.org"
  ttl     = 3600
}

resource "inwx_nameserver_record" "deintarifexperte_de_srv_autodiscover_tcp" {
  domain  = "deintarifexperte.de"
  name    = "_autodiscover._tcp.deintarifexperte.de"
  type    = "SRV"
  content = "0 443 mailbox.org"
  ttl     = 3600
}

resource "inwx_nameserver_record" "deintarifexperte_de_txt_spf" {
  domain  = "deintarifexperte.de"
  name    = "deintarifexperte.de"
  type    = "TXT"
  content = "v=spf1 include:mailbox.org mx ~all"
  ttl     = 3600
}

resource "inwx_nameserver_record" "deintarifexperte_de_txt_dmarc" {
  domain  = "deintarifexperte.de"
  name    = "_dmarc.deintarifexperte.de"
  type    = "TXT"
  content = "v=DMARC1; p=none; rua=mailto:postmaster@deintarifexperte.de; rf=afrf; sp=none; fo=1; ri=86400; adkim=r; aspf=r"
  ttl     = 3600
}

resource "inwx_nameserver_record" "deintarifexperte_de_txt_f4f894d6eeb9f9315ceb308f42f30aaee5e042f5" {
  domain  = "deintarifexperte.de"
  name    = "f4f894d6eeb9f9315ceb308f42f30aaee5e042f5.deintarifexperte.de"
  type    = "TXT"
  content = "aa3e4644636bdd5101b61917f961b9432d7e2c65"
  ttl     = 3600
}
