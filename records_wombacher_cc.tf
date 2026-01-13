# SPDX-FileCopyrightText: 2026 Dominik Wombacher <dominik@wombacher.cc>
#
# SPDX-License-Identifier: Apache-2.0

resource "inwx_nameserver_record" "wombacher_cc_a_dominik" {
  domain  = "wombacher.cc"
  name    = "dominik.wombacher.cc"
  type    = "A"
  content = "78.46.211.229"
  ttl     = 3600
}

resource "inwx_nameserver_record" "wombacher_cc_a_1" {
  domain  = "wombacher.cc"
  name    = "wombacher.cc"
  type    = "A"
  content = "78.46.211.229"
  ttl     = 3600
}

resource "inwx_nameserver_record" "wombacher_cc_aaaa_dominik" {
  domain  = "wombacher.cc"
  name    = "dominik.wombacher.cc"
  type    = "AAAA"
  content = "2a01:4f8:d0a:5287::2"
  ttl     = 3600
}

resource "inwx_nameserver_record" "wombacher_cc_aaaa_1" {
  domain  = "wombacher.cc"
  name    = "wombacher.cc"
  type    = "AAAA"
  content = "2a01:4f8:d0a:5287::2"
  ttl     = 3600
}

resource "inwx_nameserver_record" "wombacher_cc_cname_autoconfig" {
  domain  = "wombacher.cc"
  name    = "autoconfig.wombacher.cc"
  type    = "CNAME"
  content = "mail.your-server.de"
  ttl     = 3600
}

resource "inwx_nameserver_record" "wombacher_cc_txt_default2501_domainkey" {
  domain  = "wombacher.cc"
  name    = "default2501._domainkey.wombacher.cc"
  type    = "TXT"
  content = "v=DKIM1; p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEArExTtKHVZGJJ4S11LJmeDU6AWY9z5At9yThjzIz9mBORUIrZ/OztUoTmN6T+STMaQ/mVmP3qUpwUcnBv5LE+OezW8ec7EsQOZ0AvNuHNKQerRLXbLlzjNeoCCUY1QR9k165PNFi/paL31n7vIs6mS+prBmBOrQY3rk6jrY/SXF3qfFaT8jQ5UFZR5nbDcKPTFOGPAQn7fzTTr8pGwC/48COUt1rJdwSsIUewVpxNODsLhZLELs623oSHFh5JZzo+4fJo1w8Yc8XRgZns8KcfAk+KuetxSR23jdA6sd6NorXycdfC5ELFMFIzNyZjOXSkC/4uNfwAqXvgkMkZmuHBrwIDAQAB"
  ttl     = 3600
}

resource "inwx_nameserver_record" "wombacher_cc_cname_www" {
  domain  = "wombacher.cc"
  name    = "www.wombacher.cc"
  type    = "CNAME"
  content = "wombacher.cc"
  ttl     = 3600
}

resource "inwx_nameserver_record" "wombacher_cc_mx_www348" {
  domain  = "wombacher.cc"
  name    = "wombacher.cc"
  type    = "MX"
  prio    = 10
  content = "www348.your-server.de"
  ttl     = 3600
}

resource "inwx_nameserver_record" "wombacher_cc_srv_autodiscover_tcp" {
  domain  = "wombacher.cc"
  name    = "_autodiscover._tcp.wombacher.cc"
  type    = "SRV"
  content = "100 443 mail.your-server.de"
  prio    = 0
  ttl     = 3600
}

resource "inwx_nameserver_record" "wombacher_cc_srv_imaps_tcp" {
  domain  = "wombacher.cc"
  name    = "_imaps._tcp.wombacher.cc"
  type    = "SRV"
  content = "100 993 mail.your-server.de"
  prio    = 0
  ttl     = 3600
}

resource "inwx_nameserver_record" "wombacher_cc_srv_pop3s_tcp" {
  domain  = "wombacher.cc"
  name    = "_pop3s._tcp.wombacher.cc"
  type    = "SRV"
  content = "100 995 mail.your-server.de"
  prio    = 0
  ttl     = 3600
}

resource "inwx_nameserver_record" "wombacher_cc_srv_submission_tcp" {
  domain  = "wombacher.cc"
  name    = "_submission._tcp.wombacher.cc"
  type    = "SRV"
  content = "100 587 mail.your-server.de"
  prio    = 0
  ttl     = 3600
}

resource "inwx_nameserver_record" "wombacher_cc_txt_dominik_1" {
  domain  = "wombacher.cc"
  name    = "dominik.wombacher.cc"
  type    = "TXT"
  content = "aspe:keyoxide.org:CDKSMZK6K2WIQFSXRLHXVRIJ6E"
  ttl     = 3600
}

resource "inwx_nameserver_record" "wombacher_cc_txt_2" {
  domain  = "wombacher.cc"
  name    = "wombacher.cc"
  type    = "TXT"
  content = "v=spf1 a mx ~all"
  ttl     = 3600
}

resource "inwx_nameserver_record" "wombacher_cc_txt_3" {
  domain  = "wombacher.cc"
  name    = "wombacher.cc"
  type    = "TXT"
  content = "aspe:keyoxide.org:CDKSMZK6K2WIQFSXRLHXVRIJ6E"
  ttl     = 3600
}

resource "inwx_nameserver_record" "wombacher_cc_txt__dmarc" {
  domain  = "wombacher.cc"
  name    = "_dmarc.wombacher.cc"
  type    = "TXT"
  content = "v=DMARC1; p=none; rua=mailto:postmaster@wombacher.cc; ruf=mailto:postmaster@wombacher.cc; rf=afrf; sp=none; pct=100; fo=1; ri=86400; adkim=r; aspf=r"
  ttl     = 3600
}
