# SPDX-FileCopyrightText: 2026 Dominik Wombacher <dominik@wombacher.cc>
#
# SPDX-License-Identifier: Apache-2.0

# A Records
resource "inwx_nameserver_record" "wombacher_dev_a_root" {
  domain  = "wombacher.dev"
  name    = "wombacher.dev"
  type    = "A"
  content = "78.46.211.229"
  ttl     = 300
}

resource "inwx_nameserver_record" "wombacher_dev_a_www" {
  domain  = "wombacher.dev"
  name    = "www.wombacher.dev"
  type    = "A"
  content = "78.46.211.229"
  ttl     = 300
}

resource "inwx_nameserver_record" "wombacher_dev_a_beastie" {
  domain  = "wombacher.dev"
  name    = "beastie.wombacher.dev"
  type    = "A"
  content = "212.227.100.212"
  ttl     = 300
}

resource "inwx_nameserver_record" "wombacher_dev_a_lab" {
  domain  = "wombacher.dev"
  name    = "lab.wombacher.dev"
  type    = "A"
  content = "167.233.45.85"
  ttl     = 300
}

# Wildcard A record
resource "inwx_nameserver_record" "wombacher_dev_a_wildcard" {
  domain  = "wombacher.dev"
  name    = "*.wombacher.dev"
  type    = "A"
  content = "78.46.211.229"
  ttl     = 300
}

# AAAA Records
resource "inwx_nameserver_record" "wombacher_dev_aaaa_root" {
  domain  = "wombacher.dev"
  name    = "wombacher.dev"
  type    = "AAAA"
  content = "2a01:4f8:d0a:5287::2"
  ttl     = 300
}

resource "inwx_nameserver_record" "wombacher_dev_aaaa_www" {
  domain  = "wombacher.dev"
  name    = "www.wombacher.dev"
  type    = "AAAA"
  content = "2a01:4f8:d0a:5287::2"
  ttl     = 300
}

resource "inwx_nameserver_record" "wombacher_dev_aaaa_beastie" {
  domain  = "wombacher.dev"
  name    = "beastie.wombacher.dev"
  type    = "AAAA"
  content = "2a01:239:24d:600::1"
  ttl     = 300
}

resource "inwx_nameserver_record" "wombacher_dev_aaaa_lab" {
  domain  = "wombacher.dev"
  name    = "lab.wombacher.dev"
  type    = "AAAA"
  content = "2a01:4f8:1c18:c24a::1"
  ttl     = 300
}

# Wildcard AAAA record
resource "inwx_nameserver_record" "wombacher_dev_aaaa_wildcard" {
  domain  = "wombacher.dev"
  name    = "*.wombacher.dev"
  type    = "AAAA"
  content = "2a01:4f8:d0a:5287::2"
  ttl     = 300
}

# MX Records
resource "inwx_nameserver_record" "wombacher_dev_mx_1" {
  domain  = "wombacher.dev"
  name    = "wombacher.dev"
  type    = "MX"
  prio    = 10
  content = "www348.your-server.de"
  ttl     = 300
}

# CNAME Records
resource "inwx_nameserver_record" "wombacher_dev_cname_autoconfig" {
  domain  = "wombacher.dev"
  name    = "autoconfig.wombacher.dev"
  type    = "CNAME"
  content = "mail.your-server.de"
  ttl     = 300
}

resource "inwx_nameserver_record" "wombacher_dev_cname_lab_wildcard" {
  domain  = "wombacher.dev"
  name    = "*.lab.wombacher.dev"
  type    = "CNAME"
  content = "lab.wombacher.dev"
  ttl     = 300
}

# TXT Records
resource "inwx_nameserver_record" "wombacher_dev_txt_spf" {
  domain  = "wombacher.dev"
  name    = "wombacher.dev"
  type    = "TXT"
  content = "v=spf1 mx -all"
  ttl     = 300
}

resource "inwx_nameserver_record" "wombacher_dev_txt_dkim" {
  domain  = "wombacher.dev"
  name    = "default2509._domainkey.wombacher.dev"
  type    = "TXT"
  content = "v=DKIM1; p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA2ik+eA7a35C6sUZy4OT97gMxUY4SdsAEjGm6pl30KnK6au4oWq2s20homnhu9Kpo/IO41xZ6meIsfLXIB6fv4BZjNp/qXDDXCGJ6MoBdaHlnCTuWcgd5DvV8RtpMoj+3UbtLK/hgwbtrGoD/t5DGVv3b4yBimI++wXJjJntO5GahvA84kds8qKA2gXrewMljfvBIozH3bTR4ML338AkcqStfI08nq6gKy8V6/XoSWtdiIdsCfsRo0COoHpoTdzCX2xtnZfGUK//W1RT6BuXvqDofxz2NCKn7ufzj6GC/DOapUxHTkMy0P6L3Q/gw7RKPIISs1dL1PJ0u5EmrFvrB3wIDAQAB"
  ttl     = 300
}

resource "inwx_nameserver_record" "wombacher_dev_txt_dmarc" {
  domain  = "wombacher.dev"
  name    = "_dmarc.wombacher.dev"
  type    = "TXT"
  content = "v=DMARC1; p=reject; sp=reject; rua=mailto:postmaster@wombacher.cc; adkim=r; aspf=r; pct=100"
  ttl     = 300
}

# SRV Records
resource "inwx_nameserver_record" "wombacher_dev_srv_autodiscover" {
  domain  = "wombacher.dev"
  name    = "_autodiscover._tcp.wombacher.dev"
  type    = "SRV"
  content = "100 443 mail.your-server.de"
  prio    = 0
  ttl     = 300
}

resource "inwx_nameserver_record" "wombacher_dev_srv_imaps" {
  domain  = "wombacher.dev"
  name    = "_imaps._tcp.wombacher.dev"
  type    = "SRV"
  content = "100 993 mail.your-server.de"
  prio    = 0
  ttl     = 300
}

resource "inwx_nameserver_record" "wombacher_dev_srv_pop3s" {
  domain  = "wombacher.dev"
  name    = "_pop3s._tcp.wombacher.dev"
  type    = "SRV"
  content = "100 995 mail.your-server.de"
  prio    = 0
  ttl     = 300
}

resource "inwx_nameserver_record" "wombacher_dev_srv_submission" {
  domain  = "wombacher.dev"
  name    = "_submission._tcp.wombacher.dev"
  type    = "SRV"
  content = "100 587 mail.your-server.de"
  prio    = 0
  ttl     = 300
}

# Cloudflare records, same content as the INWX records above

# A Records
resource "cloudflare_dns_record" "wombacher_dev_a_root" {
  zone_id = module.wombacher_dev_zone.zone_id
  name    = "wombacher.dev"
  type    = "A"
  content = "78.46.211.229"
  ttl     = 300
  proxied = false
}

resource "cloudflare_dns_record" "wombacher_dev_a_www" {
  zone_id = module.wombacher_dev_zone.zone_id
  name    = "www.wombacher.dev"
  type    = "A"
  content = "78.46.211.229"
  ttl     = 300
  proxied = false
}

resource "cloudflare_dns_record" "wombacher_dev_a_beastie" {
  zone_id = module.wombacher_dev_zone.zone_id
  name    = "beastie.wombacher.dev"
  type    = "A"
  content = "212.227.100.212"
  ttl     = 300
  proxied = false
}

resource "cloudflare_dns_record" "wombacher_dev_a_lab" {
  zone_id = module.wombacher_dev_zone.zone_id
  name    = "lab.wombacher.dev"
  type    = "A"
  content = "167.233.45.85"
  ttl     = 300
  proxied = false
}

# Wildcard A record
resource "cloudflare_dns_record" "wombacher_dev_a_wildcard" {
  zone_id = module.wombacher_dev_zone.zone_id
  name    = "*.wombacher.dev"
  type    = "A"
  content = "78.46.211.229"
  ttl     = 300
  proxied = false
}

# AAAA Records
resource "cloudflare_dns_record" "wombacher_dev_aaaa_root" {
  zone_id = module.wombacher_dev_zone.zone_id
  name    = "wombacher.dev"
  type    = "AAAA"
  content = "2a01:4f8:d0a:5287::2"
  ttl     = 300
  proxied = false
}

resource "cloudflare_dns_record" "wombacher_dev_aaaa_www" {
  zone_id = module.wombacher_dev_zone.zone_id
  name    = "www.wombacher.dev"
  type    = "AAAA"
  content = "2a01:4f8:d0a:5287::2"
  ttl     = 300
  proxied = false
}

resource "cloudflare_dns_record" "wombacher_dev_aaaa_beastie" {
  zone_id = module.wombacher_dev_zone.zone_id
  name    = "beastie.wombacher.dev"
  type    = "AAAA"
  content = "2a01:239:24d:600::1"
  ttl     = 300
  proxied = false
}

resource "cloudflare_dns_record" "wombacher_dev_aaaa_lab" {
  zone_id = module.wombacher_dev_zone.zone_id
  name    = "lab.wombacher.dev"
  type    = "AAAA"
  content = "2a01:4f8:1c18:c24a::1"
  ttl     = 300
  proxied = false
}

# Wildcard AAAA record
resource "cloudflare_dns_record" "wombacher_dev_aaaa_wildcard" {
  zone_id = module.wombacher_dev_zone.zone_id
  name    = "*.wombacher.dev"
  type    = "AAAA"
  content = "2a01:4f8:d0a:5287::2"
  ttl     = 300
  proxied = false
}

# MX Records
resource "cloudflare_dns_record" "wombacher_dev_mx_1" {
  zone_id  = module.wombacher_dev_zone.zone_id
  name     = "wombacher.dev"
  type     = "MX"
  content  = "www348.your-server.de"
  priority = 10
  ttl      = 300
}

# CNAME Records
resource "cloudflare_dns_record" "wombacher_dev_cname_autoconfig" {
  zone_id = module.wombacher_dev_zone.zone_id
  name    = "autoconfig.wombacher.dev"
  type    = "CNAME"
  content = "mail.your-server.de"
  ttl     = 300
  proxied = false
}

resource "cloudflare_dns_record" "wombacher_dev_cname_lab_wildcard" {
  zone_id = module.wombacher_dev_zone.zone_id
  name    = "*.lab.wombacher.dev"
  type    = "CNAME"
  content = "lab.wombacher.dev"
  ttl     = 300
  proxied = false
}

# TXT Records
resource "cloudflare_dns_record" "wombacher_dev_txt_spf" {
  zone_id = module.wombacher_dev_zone.zone_id
  name    = "wombacher.dev"
  type    = "TXT"
  content = "v=spf1 mx -all"
  ttl     = 300
}

resource "cloudflare_dns_record" "wombacher_dev_txt_dkim" {
  zone_id = module.wombacher_dev_zone.zone_id
  name    = "default2509._domainkey.wombacher.dev"
  type    = "TXT"
  content = "v=DKIM1; p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA2ik+eA7a35C6sUZy4OT97gMxUY4SdsAEjGm6pl30KnK6au4oWq2s20homnhu9Kpo/IO41xZ6meIsfLXIB6fv4BZjNp/qXDDXCGJ6MoBdaHlnCTuWcgd5DvV8RtpMoj+3UbtLK/hgwbtrGoD/t5DGVv3b4yBimI++wXJjJntO5GahvA84kds8qKA2gXrewMljfvBIozH3bTR4ML338AkcqStfI08nq6gKy8V6/XoSWtdiIdsCfsRo0COoHpoTdzCX2xtnZfGUK//W1RT6BuXvqDofxz2NCKn7ufzj6GC/DOapUxHTkMy0P6L3Q/gw7RKPIISs1dL1PJ0u5EmrFvrB3wIDAQAB"
  ttl     = 300
}

resource "cloudflare_dns_record" "wombacher_dev_txt_dmarc" {
  zone_id = module.wombacher_dev_zone.zone_id
  name    = "_dmarc.wombacher.dev"
  type    = "TXT"
  content = "v=DMARC1; p=reject; sp=reject; rua=mailto:postmaster@wombacher.cc; adkim=r; aspf=r; pct=100"
  ttl     = 300
}

# SRV Records
resource "cloudflare_dns_record" "wombacher_dev_srv_autodiscover" {
  zone_id = module.wombacher_dev_zone.zone_id
  name    = "_autodiscover._tcp.wombacher.dev"
  type    = "SRV"
  ttl     = 300
  data = {
    priority = 0
    weight   = 100
    port     = 443
    target   = "mail.your-server.de"
  }
}

resource "cloudflare_dns_record" "wombacher_dev_srv_imaps" {
  zone_id = module.wombacher_dev_zone.zone_id
  name    = "_imaps._tcp.wombacher.dev"
  type    = "SRV"
  ttl     = 300
  data = {
    priority = 0
    weight   = 100
    port     = 993
    target   = "mail.your-server.de"
  }
}

resource "cloudflare_dns_record" "wombacher_dev_srv_pop3s" {
  zone_id = module.wombacher_dev_zone.zone_id
  name    = "_pop3s._tcp.wombacher.dev"
  type    = "SRV"
  ttl     = 300
  data = {
    priority = 0
    weight   = 100
    port     = 995
    target   = "mail.your-server.de"
  }
}

resource "cloudflare_dns_record" "wombacher_dev_srv_submission" {
  zone_id = module.wombacher_dev_zone.zone_id
  name    = "_submission._tcp.wombacher.dev"
  type    = "SRV"
  ttl     = 300
  data = {
    priority = 0
    weight   = 100
    port     = 587
    target   = "mail.your-server.de"
  }
}
