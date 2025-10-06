# SPDX-FileCopyrightText: 2025 Dominik Wombacher <dominik@wombacher.cc>
#
# SPDX-License-Identifier: MIT

resource "inwx_nameserver_record" "wombacher_cc_a_dominik" {
  domain  = "wombacher.cc"
  name    = "dominik.wombacher.cc"
  type    = "A"
  content = "78.46.211.229"
  ttl     = 300
}

resource "inwx_nameserver_record" "wombacher_cc_a_1" {
  domain  = "wombacher.cc"
  name    = ""
  type    = "A"
  content = "78.46.211.229"
  ttl     = 300
}

resource "inwx_nameserver_record" "wombacher_cc_aaaa_dominik" {
  domain  = "wombacher.cc"
  name    = "dominik.wombacher.cc"
  type    = "AAAA"
  content = "2a01:4f8:d0a:5287::2"
  ttl     = 300
}

resource "inwx_nameserver_record" "wombacher_cc_aaaa_1" {
  domain  = "wombacher.cc"
  name    = ""
  type    = "AAAA"
  content = "2a01:4f8:d0a:5287::2"
  ttl     = 300
}

resource "inwx_nameserver_record" "wombacher_cc_cname_autoconfig" {
  domain  = "wombacher.cc"
  name    = "autoconfig.wombacher.cc"
  type    = "CNAME"
  content = "mailbox.org"
  ttl     = 300
}

resource "inwx_nameserver_record" "wombacher_cc_cname_mbo0001_domainkey" {
  domain  = "wombacher.cc"
  name    = "mbo0001._domainkey.wombacher.cc"
  type    = "CNAME"
  content = "mbo0001._domainkey.mailbox.org"
  ttl     = 300
}

resource "inwx_nameserver_record" "wombacher_cc_cname_mbo0002_domainkey" {
  domain  = "wombacher.cc"
  name    = "mbo0002._domainkey.wombacher.cc"
  type    = "CNAME"
  content = "mbo0002._domainkey.mailbox.org"
  ttl     = 300
}

resource "inwx_nameserver_record" "wombacher_cc_cname_mbo0003_domainkey" {
  domain  = "wombacher.cc"
  name    = "mbo0003._domainkey.wombacher.cc"
  type    = "CNAME"
  content = "mbo0003._domainkey.mailbox.org"
  ttl     = 300
}

resource "inwx_nameserver_record" "wombacher_cc_cname_mbo0004_domainkey" {
  domain  = "wombacher.cc"
  name    = "mbo0004._domainkey.wombacher.cc"
  type    = "CNAME"
  content = "mbo0004._domainkey.mailbox.org"
  ttl     = 300
}

resource "inwx_nameserver_record" "wombacher_cc_txt_default2501_domainkey" {
  domain  = "wombacher.cc"
  name    = "default2501._domainkey.wombacher.cc"
  type    = "TXT"
  content = "v=DKIM1; p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEArExTtKHVZGJJ4S11LJmeDU6AWY9z5At9yThjzIz9mBORUIrZ/OztUoTmN6T+STMaQ/mVmP3qUpwUcnBv5LE+OezW8ec7EsQOZ0AvNuHNKQerRLXbLlzjNeoCCUY1QR9k165PNFi/paL31n7vIs6mS+prBmBOrQY3rk6jrY/SXF3qfFaT8jQ5UFZR5nbDcKPTFOGPAQn7fzTTr8pGwC/48COUt1rJdwSsIUewVpxNODsLhZLELs623oSHFh5JZzo+4fJo1w8Yc8XRgZns8KcfAk+KuetxSR23jdA6sd6NorXycdfC5ELFMFIzNyZjOXSkC/4uNfwAqXvgkMkZmuHBrwIDAQAB"
  ttl     = 300
}

resource "inwx_nameserver_record" "wombacher_cc_cname_www" {
  domain  = "wombacher.cc"
  name    = "www.wombacher.cc"
  type    = "CNAME"
  content = "wombacher.cc"
  ttl     = 300
}

resource "inwx_nameserver_record" "wombacher_cc_mx_1" {
  domain  = "wombacher.cc"
  name    = ""
  type    = "MX"
  prio    = 10
  content = "mxext1.mailbox.org"
  ttl     = 300
}

resource "inwx_nameserver_record" "wombacher_cc_mx_2" {
  domain  = "wombacher.cc"
  name    = ""
  type    = "MX"
  prio    = 10
  content = "mxext2.mailbox.org"
  ttl     = 300
}

resource "inwx_nameserver_record" "wombacher_cc_mx_3" {
  domain  = "wombacher.cc"
  name    = ""
  type    = "MX"
  prio    = 20
  content = "mxext3.mailbox.org"
  ttl     = 300
}

resource "inwx_nameserver_record" "wombacher_cc_srv_autodiscover_tcp" {
  domain  = "wombacher.cc"
  name    = "_autodiscover._tcp.wombacher.cc"
  type    = "SRV"
  content = "0 443 mailbox.org"
  ttl     = 300
}

resource "inwx_nameserver_record" "wombacher_cc_txt_dominik_1" {
  domain  = "wombacher.cc"
  name    = "dominik.wombacher.cc"
  type    = "TXT"
  content = "aspe:keyoxide.org:CDKSMZK6K2WIQFSXRLHXVRIJ6E"
  ttl     = 300
}

resource "inwx_nameserver_record" "wombacher_cc_txt_f4f894d6eeb9f9315ceb308f42f30aaee5e042f5" {
  domain  = "wombacher.cc"
  name    = "f4f894d6eeb9f9315ceb308f42f30aaee5e042f5.wombacher.cc"
  type    = "TXT"
  content = "9690e661754e8389ce6de8fe279c388c43d9654e"
  ttl     = 300
}

resource "inwx_nameserver_record" "wombacher_cc_txt_2" {
  domain  = "wombacher.cc"
  name    = ""
  type    = "TXT"
  content = "v=spf1 a mx include:mailbox.org ~all"
  ttl     = 300
}

resource "inwx_nameserver_record" "wombacher_cc_txt_3" {
  domain  = "wombacher.cc"
  name    = ""
  type    = "TXT"
  content = "aspe:keyoxide.org:CDKSMZK6K2WIQFSXRLHXVRIJ6E"
  ttl     = 300
}

resource "inwx_nameserver_record" "wombacher_cc_txt__dmarc" {
  domain  = "wombacher.cc"
  name    = "_dmarc.wombacher.cc"
  type    = "TXT"
  content = "v=DMARC1; p=none; rua=mailto:postmaster@wombacher.cc; ruf=mailto:postmaster@wombacher.cc; rf=afrf; sp=none; pct=100; fo=1; ri=86400; adkim=r; aspf=r"
  ttl     = 300
}
