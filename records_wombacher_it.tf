# SPDX-FileCopyrightText: 2025 Dominik Wombacher <dominik@wombacher.cc>
#
# SPDX-License-Identifier: MIT

resource "inwx_nameserver_record" "wombacher_it_a_centrex" {
  domain  = "wombacher.it"
  name    = "centrex.wombacher.it"
  type    = "A"
  content = "92.60.208.138"
  ttl     = 3600
}

resource "inwx_nameserver_record" "wombacher_it_a_ns1" {
  domain  = "wombacher.it"
  name    = "ns1.wombacher.it"
  type    = "A"
  content = "192.174.68.104"
  ttl     = 3600
}

resource "inwx_nameserver_record" "wombacher_it_a_ns2" {
  domain  = "wombacher.it"
  name    = "ns2.wombacher.it"
  type    = "A"
  content = "176.97.158.104"
  ttl     = 3600
}

resource "inwx_nameserver_record" "wombacher_it_a_ns3" {
  domain  = "wombacher.it"
  name    = "ns3.wombacher.it"
  type    = "A"
  content = "45.87.158.53"
  ttl     = 3600
}

resource "inwx_nameserver_record" "wombacher_it_a_1" {
  domain  = "wombacher.it"
  name    = ""
  type    = "A"
  content = "78.46.211.229"
  ttl     = 300
}

resource "inwx_nameserver_record" "wombacher_it_aaaa_ns1" {
  domain  = "wombacher.it"
  name    = "ns1.wombacher.it"
  type    = "AAAA"
  content = "2001:67c:1bc::104"
  ttl     = 3600
}

resource "inwx_nameserver_record" "wombacher_it_aaaa_ns2" {
  domain  = "wombacher.it"
  name    = "ns2.wombacher.it"
  type    = "AAAA"
  content = "2001:67c:10b8::104"
  ttl     = 3600
}

resource "inwx_nameserver_record" "wombacher_it_aaaa_ns3" {
  domain  = "wombacher.it"
  name    = "ns3.wombacher.it"
  type    = "AAAA"
  content = "2a02:d500::53"
  ttl     = 3600
}

resource "inwx_nameserver_record" "wombacher_it_aaaa_1" {
  domain  = "wombacher.it"
  name    = ""
  type    = "AAAA"
  content = "2a01:4f8:d0a:5287::2"
  ttl     = 300
}

resource "inwx_nameserver_record" "wombacher_it_caa_1" {
  domain  = "wombacher.it"
  name    = ""
  type    = "CAA"
  content = "0 issue \"letsencrypt.org\""
  ttl     = 3600
}

resource "inwx_nameserver_record" "wombacher_it_caa_2" {
  domain  = "wombacher.it"
  name    = ""
  type    = "CAA"
  content = "0 issuewild \"letsencrypt.org\""
  ttl     = 3600
}

resource "inwx_nameserver_record" "wombacher_it_caa_3" {
  domain  = "wombacher.it"
  name    = ""
  type    = "CAA"
  content = "0 iodef \"mailto:team@wombacher.it\""
  ttl     = 3600
}

resource "inwx_nameserver_record" "wombacher_it_cname_autoconfig" {
  domain  = "wombacher.it"
  name    = "autoconfig.wombacher.it"
  type    = "CNAME"
  content = "mail.your-server.de"
  ttl     = 300
}

resource "inwx_nameserver_record" "wombacher_it_cname_www" {
  domain  = "wombacher.it"
  name    = "www.wombacher.it"
  type    = "CNAME"
  content = "wombacher.it"
  ttl     = 300
}

resource "inwx_nameserver_record" "wombacher_it_mx_1" {
  domain  = "wombacher.it"
  name    = ""
  type    = "MX"
  prio    = 10
  content = "www348.your-server.de"
  ttl     = 300
}

resource "inwx_nameserver_record" "wombacher_it_ns_1" {
  domain  = "wombacher.it"
  name    = ""
  type    = "NS"
  content = "ns1.wombacher.it"
  ttl     = 86400
}

resource "inwx_nameserver_record" "wombacher_it_ns_2" {
  domain  = "wombacher.it"
  name    = ""
  type    = "NS"
  content = "ns2.wombacher.it"
  ttl     = 86400
}

resource "inwx_nameserver_record" "wombacher_it_ns_3" {
  domain  = "wombacher.it"
  name    = ""
  type    = "NS"
  content = "ns3.wombacher.it"
  ttl     = 86400
}

resource "inwx_nameserver_record" "wombacher_it_srv_autodiscover_tcp" {
  domain  = "wombacher.it"
  name    = "_autodiscover._tcp.wombacher.it"
  type    = "SRV"
  content = "0 443 mail.your-server.de"
  ttl     = 300
}

resource "inwx_nameserver_record" "wombacher_it_txt_default2307_domainkey" {
  domain  = "wombacher.it"
  name    = "default2307._domainkey.wombacher.it"
  type    = "TXT"
  content = "v=DKIM1; p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAz6OeTNkmbhgowOvZU9xb+vEsjsA+2Fr7Bce/GCu51KdUDtdKgMBRZW8F5i3EAHhVOD90M1GEBq129kCONMMgLpjRsL1Co5eNOQAq97zHhAJHj9prxLB1D/0EyH1A/R8j5MikHi2jd0MvaYY34k5ocNswQ/yPjqnRMQRmXw0IucXnMKIn656PECziJldI9HfNMHiaR3bnDExWejZD8eWenRjQx/chBAWnn7uTXRMxXCHiSG70C+xUVD2MGD1+UDwIa7YXx2S8VaUnWFSZdpepwfayNBEK747qNLtesttJbDI1ci427dwvqNiXANC8hzBf0igPIWoRWQPtnS1dm6fpYQIDAQAB"
  ttl     = 300
}

resource "inwx_nameserver_record" "wombacher_it_txt_1" {
  domain  = "wombacher.it"
  name    = ""
  type    = "TXT"
  content = "v=spf1 include:www348.your-server.de mx ~all"
  ttl     = 300
}

resource "inwx_nameserver_record" "wombacher_it_txt_dmarc" {
  domain  = "wombacher.it"
  name    = "_dmarc.wombacher.it"
  type    = "TXT"
  content = "v=DMARC1; p=none; rua=mailto:postmaster@wombacher.it; ruf=mailto:postmaster@wombacher.it; rf=afrf; sp=none; fo=1; ri=86400; adkim=r; aspf=r"
  ttl     = 3600
}

resource "inwx_nameserver_record" "fwd_wombacher_it_mx_1" {
  domain  = "wombacher.it"
  name    = "fwd.wombacher.it"
  type    = "MX"
  prio    = 10
  content = "mx1.improvmx.com"
  ttl     = 300
}

resource "inwx_nameserver_record" "fwd_wombacher_it_mx_2" {
  domain  = "wombacher.it"
  name    = "fwd.wombacher.it"
  type    = "MX"
  prio    = 20
  content = "mx2.improvmx.com"
  ttl     = 300
}

resource "inwx_nameserver_record" "fwd_wombacher_it_txt_1" {
  domain  = "wombacher.it"
  name    = "fwd.wombacher.it"
  type    = "TXT"
  content = "v=spf1 include:spf.improvmx.com ~all"
  ttl     = 300
}

resource "inwx_nameserver_record" "wombacher_it_a_help" {
  domain  = "wombacher.it"
  name    = "help.wombacher.it"
  type    = "A"
  content = "78.46.211.229"
  ttl     = 300
}

resource "inwx_nameserver_record" "wombacher_it_aaaa_help" {
  domain  = "wombacher.it"
  name    = "help.wombacher.it"
  type    = "AAAA"
  content = "2a01:4f8:d0a:5287::2"
  ttl     = 300
}
