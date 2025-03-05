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

resource "inwx_nameserver_record" "wombacher_cc_caa_1" {
  domain  = "wombacher.cc"
  name    = ""
  type    = "CAA"
  content = "0 issue \"letsencrypt.org\""
  ttl     = 3600
}

resource "inwx_nameserver_record" "wombacher_cc_caa_2" {
  domain  = "wombacher.cc"
  name    = ""
  type    = "CAA"
  content = "0 issuewild \"letsencrypt.org\""
  ttl     = 3600
}

resource "inwx_nameserver_record" "wombacher_cc_caa_3" {
  domain  = "wombacher.cc"
  name    = ""
  type    = "CAA"
  content = "0 iodef \"mailto:dominik@wombacher.cc\""
  ttl     = 3600
}

resource "inwx_nameserver_record" "wombacher_cc_cname_autoconfig" {
  domain  = "wombacher.cc"
  name    = "autoconfig.wombacher.cc"
  type    = "CNAME"
  content = "mailbox.org"
  ttl     = 3600
}

resource "inwx_nameserver_record" "wombacher_cc_cname_mbo0001_domainkey" {
  domain  = "wombacher.cc"
  name    = "mbo0001._domainkey.wombacher.cc"
  type    = "CNAME"
  content = "mbo0001._domainkey.mailbox.org"
  ttl     = 3600
}

resource "inwx_nameserver_record" "wombacher_cc_cname_mbo0002_domainkey" {
  domain  = "wombacher.cc"
  name    = "mbo0002._domainkey.wombacher.cc"
  type    = "CNAME"
  content = "mbo0002._domainkey.mailbox.org"
  ttl     = 3600
}

resource "inwx_nameserver_record" "wombacher_cc_cname_mbo0003_domainkey" {
  domain  = "wombacher.cc"
  name    = "mbo0003._domainkey.wombacher.cc"
  type    = "CNAME"
  content = "mbo0003._domainkey.mailbox.org"
  ttl     = 3600
}

resource "inwx_nameserver_record" "wombacher_cc_cname_mbo0004_domainkey" {
  domain  = "wombacher.cc"
  name    = "mbo0004._domainkey.wombacher.cc"
  type    = "CNAME"
  content = "mbo0004._domainkey.mailbox.org"
  ttl     = 3600
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
  ttl     = 3600
}

resource "inwx_nameserver_record" "wombacher_cc_mx_2" {
  domain  = "wombacher.cc"
  name    = ""
  type    = "MX"
  prio    = 10
  content = "mxext2.mailbox.org"
  ttl     = 3600
}

resource "inwx_nameserver_record" "wombacher_cc_mx_3" {
  domain  = "wombacher.cc"
  name    = ""
  type    = "MX"
  prio    = 20
  content = "mxext3.mailbox.org"
  ttl     = 3600
}

resource "inwx_nameserver_record" "wombacher_cc_ns_1" {
  domain  = "wombacher.cc"
  name    = ""
  type    = "NS"
  content = "ns1.wombacher.it"
  ttl     = 86400
}

resource "inwx_nameserver_record" "wombacher_cc_ns_2" {
  domain  = "wombacher.cc"
  name    = ""
  type    = "NS"
  content = "ns2.wombacher.it"
  ttl     = 86400
}

resource "inwx_nameserver_record" "wombacher_cc_ns_3" {
  domain  = "wombacher.cc"
  name    = ""
  type    = "NS"
  content = "ns3.wombacher.it"
  ttl     = 86400
}

resource "inwx_nameserver_record" "wombacher_cc_srv_autodiscover_tcp" {
  domain  = "wombacher.cc"
  name    = "_autodiscover._tcp.wombacher.cc"
  type    = "SRV"
  content = "0 443 mailbox.org"
  ttl     = 3600
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
  ttl     = 3600
}

resource "inwx_nameserver_record" "wombacher_cc_txt_mailjet_425559c6" {
  domain  = "wombacher.cc"
  name    = "mailjet._425559c6.wombacher.cc"
  type    = "TXT"
  content = "425559c6298b631dfe8d0e47a7a684a0"
  ttl     = 300
}

resource "inwx_nameserver_record" "wombacher_cc_txt_mailjet_domainkey" {
  domain  = "wombacher.cc"
  name    = "mailjet._domainkey.wombacher.cc"
  type    = "TXT"
  content = "k=rsa; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQC40wUCqgQc9MbZxeNupBo1up/TE+2yHL+7HKbigVcwuDeqbYcD4Ai5FeFU0y9OFVyda7nVtm7BIfDEpyezKsBvv0bzeq+ng4Xl8szw9k4flcE3OC3erwSJnfGtnbAJNX3vRUddoDFc2+oUbI36cjgqENS/MuEq59qMq4s3mFaxawIDAQAB"
  ttl     = 300
}

resource "inwx_nameserver_record" "wombacher_cc_txt_2" {
  domain  = "wombacher.cc"
  name    = ""
  type    = "TXT"
  content = "v=spf1 include:spf.mailjet.com include:mailbox.org mx ~all"
  ttl     = 3600
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
  content = "v=DMARC1; p=none; rua=mailto:postmaster@wombacher.cc; rf=afrf; sp=none; fo=1; ri=86400; adkim=r; aspf=r"
  ttl     = 3600
}
