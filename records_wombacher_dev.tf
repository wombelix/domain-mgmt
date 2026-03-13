# SPDX-FileCopyrightText: 2026 Dominik Wombacher <dominik@wombacher.cc>
#
# SPDX-License-Identifier: Apache-2.0

# A Records
resource "inwx_nameserver_record" "wombacher_dev_a_root" {
  domain  = "wombacher.dev"
  name    = "wombacher.dev"
  type    = "A"
  content = "78.46.211.229"
  ttl     = 3600
}

resource "inwx_nameserver_record" "wombacher_dev_a_www" {
  domain  = "wombacher.dev"
  name    = "www.wombacher.dev"
  type    = "A"
  content = "78.46.211.229"
  ttl     = 3600
}

resource "inwx_nameserver_record" "wombacher_dev_a_beastie" {
  domain  = "wombacher.dev"
  name    = "beastie.wombacher.dev"
  type    = "A"
  content = "212.227.100.212"
  ttl     = 3600
}

resource "inwx_nameserver_record" "wombacher_dev_a_k8s" {
  domain  = "wombacher.dev"
  name    = "k8s.wombacher.dev"
  type    = "A"
  content = "91.99.69.228"
  ttl     = 3600
}

# Wildcard A record
resource "inwx_nameserver_record" "wombacher_dev_a_wildcard" {
  domain  = "wombacher.dev"
  name    = "*.wombacher.dev"
  type    = "A"
  content = "78.46.211.229"
  ttl     = 3600
}

resource "inwx_nameserver_record" "wombacher_dev_a_wildcard_apps_k8s" {
  domain  = "wombacher.dev"
  name    = "*.apps.k8s.wombacher.dev"
  type    = "A"
  content = "91.99.69.228"
  ttl     = 3600
}

# AAAA Records
resource "inwx_nameserver_record" "wombacher_dev_aaaa_root" {
  domain  = "wombacher.dev"
  name    = "wombacher.dev"
  type    = "AAAA"
  content = "2a01:4f8:d0a:5287::2"
  ttl     = 3600
}

resource "inwx_nameserver_record" "wombacher_dev_aaaa_www" {
  domain  = "wombacher.dev"
  name    = "www.wombacher.dev"
  type    = "AAAA"
  content = "2a01:4f8:d0a:5287::2"
  ttl     = 3600
}

resource "inwx_nameserver_record" "wombacher_dev_aaaa_beastie" {
  domain  = "wombacher.dev"
  name    = "beastie.wombacher.dev"
  type    = "AAAA"
  content = "2a01:239:24d:600::1"
  ttl     = 3600
}

resource "inwx_nameserver_record" "wombacher_dev_aaaa_k8s" {
  domain  = "wombacher.dev"
  name    = "k8s.wombacher.dev"
  type    = "AAAA"
  content = "2a01:4f8:1c1c:d2bd::1"
  ttl     = 3600
}

# Wildcard AAAA record
resource "inwx_nameserver_record" "wombacher_dev_aaaa_wildcard" {
  domain  = "wombacher.dev"
  name    = "*.wombacher.dev"
  type    = "AAAA"
  content = "2a01:4f8:d0a:5287::2"
  ttl     = 3600
}

resource "inwx_nameserver_record" "wombacher_dev_aaaa_wildcard_apps_k8s" {
  domain  = "wombacher.dev"
  name    = "*.apps.k8s.wombacher.dev"
  type    = "AAAA"
  content = "2a01:4f8:1c1c:d2bd::1"
  ttl     = 3600
}

# MX Records
resource "inwx_nameserver_record" "wombacher_dev_mx_1" {
  domain  = "wombacher.dev"
  name    = "wombacher.dev"
  type    = "MX"
  prio    = 10
  content = "www348.your-server.de"
  ttl     = 3600
}

# CNAME Records
resource "inwx_nameserver_record" "wombacher_dev_cname_autoconfig" {
  domain  = "wombacher.dev"
  name    = "autoconfig.wombacher.dev"
  type    = "CNAME"
  content = "mail.your-server.de"
  ttl     = 3600
}

# TXT Records
resource "inwx_nameserver_record" "wombacher_dev_txt_spf" {
  domain  = "wombacher.dev"
  name    = "wombacher.dev"
  type    = "TXT"
  content = "v=spf1 mx -all"
  ttl     = 3600
}

resource "inwx_nameserver_record" "wombacher_dev_txt_dkim" {
  domain  = "wombacher.dev"
  name    = "default2509._domainkey.wombacher.dev"
  type    = "TXT"
  content = "v=DKIM1; p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA2ik+eA7a35C6sUZy4OT97gMxUY4SdsAEjGm6pl30KnK6au4oWq2s20homnhu9Kpo/IO41xZ6meIsfLXIB6fv4BZjNp/qXDDXCGJ6MoBdaHlnCTuWcgd5DvV8RtpMoj+3UbtLK/hgwbtrGoD/t5DGVv3b4yBimI++wXJjJntO5GahvA84kds8qKA2gXrewMljfvBIozH3bTR4ML338AkcqStfI08nq6gKy8V6/XoSWtdiIdsCfsRo0COoHpoTdzCX2xtnZfGUK//W1RT6BuXvqDofxz2NCKn7ufzj6GC/DOapUxHTkMy0P6L3Q/gw7RKPIISs1dL1PJ0u5EmrFvrB3wIDAQAB"
  ttl     = 3600
}

resource "inwx_nameserver_record" "wombacher_dev_txt_dmarc" {
  domain  = "wombacher.dev"
  name    = "_dmarc.wombacher.dev"
  type    = "TXT"
  content = "v=DMARC1; p=reject; sp=reject; rua=mailto:postmaster@wombacher.cc; adkim=r; aspf=r; pct=100"
  ttl     = 3600
}

# SRV Records
resource "inwx_nameserver_record" "wombacher_dev_srv_autodiscover" {
  domain  = "wombacher.dev"
  name    = "_autodiscover._tcp.wombacher.dev"
  type    = "SRV"
  content = "100 443 mail.your-server.de"
  prio    = 0
  ttl     = 3600
}

resource "inwx_nameserver_record" "wombacher_dev_srv_imaps" {
  domain  = "wombacher.dev"
  name    = "_imaps._tcp.wombacher.dev"
  type    = "SRV"
  content = "100 993 mail.your-server.de"
  prio    = 0
  ttl     = 3600
}

resource "inwx_nameserver_record" "wombacher_dev_srv_pop3s" {
  domain  = "wombacher.dev"
  name    = "_pop3s._tcp.wombacher.dev"
  type    = "SRV"
  content = "100 995 mail.your-server.de"
  prio    = 0
  ttl     = 3600
}

resource "inwx_nameserver_record" "wombacher_dev_srv_submission" {
  domain  = "wombacher.dev"
  name    = "_submission._tcp.wombacher.dev"
  type    = "SRV"
  content = "100 587 mail.your-server.de"
  prio    = 0
  ttl     = 3600
}
