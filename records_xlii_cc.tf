# SPDX-FileCopyrightText: 2025 Dominik Wombacher <dominik@wombacher.cc>
#
# SPDX-License-Identifier: MIT

# A Records
resource "inwx_nameserver_record" "xlii_cc_a_root" {
  domain  = "xlii.cc"
  name    = ""
  type    = "A"
  content = "78.46.211.229"
}

resource "inwx_nameserver_record" "xlii_cc_a_www" {
  domain  = "xlii.cc"
  name    = "www.xlii.cc"
  type    = "A"
  content = "78.46.211.229"
}

# Wildcard A record
resource "inwx_nameserver_record" "xlii_cc_a_wildcard" {
  domain  = "xlii.cc"
  name    = "*.xlii.cc"
  type    = "A"
  content = "78.46.211.229"
}

# AAAA Records
resource "inwx_nameserver_record" "xlii_cc_aaaa_root" {
  domain  = "xlii.cc"
  name    = ""
  type    = "AAAA"
  content = "2a01:4f8:d0a:5287::2"
}

resource "inwx_nameserver_record" "xlii_cc_aaaa_www" {
  domain  = "xlii.cc"
  name    = "www.xlii.cc"
  type    = "AAAA"
  content = "2a01:4f8:d0a:5287::2"
}

# Wildcard AAAA record
resource "inwx_nameserver_record" "xlii_cc_aaaa_wildcard" {
  domain  = "xlii.cc"
  name    = "*.xlii.cc"
  type    = "AAAA"
  content = "2a01:4f8:d0a:5287::2"
}

# MX Records
resource "inwx_nameserver_record" "xlii_cc_mx_1" {
  domain  = "xlii.cc"
  name    = ""
  type    = "MX"
  prio    = 10
  content = "www348.your-server.de"
}

# CNAME Records
resource "inwx_nameserver_record" "xlii_cc_cname_autoconfig" {
  domain  = "xlii.cc"
  name    = "autoconfig.xlii.cc"
  type    = "CNAME"
  content = "mail.your-server.de"
}

resource "inwx_nameserver_record" "xlii_cc_cname_hub" {
  domain  = "xlii.cc"
  name    = "hub.xlii.cc"
  type    = "CNAME"
  content = "nx31812.your-storageshare.de"
  ttl     = 3600
}

# TXT Records
resource "inwx_nameserver_record" "xlii_cc_txt_spf" {
  domain  = "xlii.cc"
  name    = ""
  type    = "TXT"
  content = "v=spf1 mx ~all"
}

resource "inwx_nameserver_record" "xlii_cc_txt_dkim" {
  domain  = "xlii.cc"
  name    = "default2509._domainkey.xlii.cc"
  type    = "TXT"
  content = "v=DKIM1; p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA5+obsOKO4tdJwua7STmSOmKcL9eO7MIJxpB13ph7GIyU9vNJgE+vijMQpysNMsrGWtFu10lLw/Xc7OVqa4qPx3iTtTdZeDrM7mNlWqj8AErltLcaoxGoBAAveHsuBgbmwx9v//Jf7Yk7Oh1kpYqjbPTesLpeYgqVcQZu96GV9Egpw9HOWzKkM21sQ9+JEJowDx9jG9hqza8GyG6NVlaIyxFNrLIorb7yhq9wGPNEjXE+n980CnzMBtlE9BNIY7bixGY47fV3PJZJH2K3Z0C/or3NNgZrOqMf4MVSLtBSncuaoWeWvp7oDxEF6+WRnH70aM/jmA40qVc1NHDPg4ElPQIDAQAB"
}

resource "inwx_nameserver_record" "xlii_cc_txt_dmarc" {
  domain  = "xlii.cc"
  name    = "_dmarc.xlii.cc"
  type    = "TXT"
  content = "v=DMARC1; p=none; rua=mailto:postmaster@wombacher.cc; ruf=mailto:postmaster@wombacher.cc; rf=afrf; sp=none; fo=1; ri=86400; adkim=r; aspf=r"
}

# SRV Records
resource "inwx_nameserver_record" "xlii_cc_srv_autodiscover" {
  domain  = "xlii.cc"
  name    = "_autodiscover._tcp.xlii.cc"
  type    = "SRV"
  content = "100 443 mail.your-server.de"
  prio    = 0
}

resource "inwx_nameserver_record" "xlii_cc_srv_imaps" {
  domain  = "xlii.cc"
  name    = "_imaps._tcp.xlii.cc"
  type    = "SRV"
  content = "100 993 mail.your-server.de"
  prio    = 0
}

resource "inwx_nameserver_record" "xlii_cc_srv_pop3s" {
  domain  = "xlii.cc"
  name    = "_pop3s._tcp.xlii.cc"
  type    = "SRV"
  content = "100 995 mail.your-server.de"
  prio    = 0
}

resource "inwx_nameserver_record" "xlii_cc_srv_submission" {
  domain  = "xlii.cc"
  name    = "_submission._tcp.xlii.cc"
  type    = "SRV"
  content = "100 587 mail.your-server.de"
  prio    = 0
}
