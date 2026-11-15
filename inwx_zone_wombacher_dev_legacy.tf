# SPDX-FileCopyrightText: 2026 Dominik Wombacher <dominik@wombacher.cc>
#
# SPDX-License-Identifier: Apache-2.0

# Temporary: INWX zone keeps answering during the move to Cloudflare.
# Delete this file once the Cloudflare nameservers are active everywhere.

resource "inwx_nameserver" "wombacher_dev_legacy" {
  domain      = "wombacher.dev"
  type        = "MASTER"
  nameservers = ["ns.inwx.de", "ns2.inwx.de", "ns3.inwx.eu"]
  soa_mail    = "hostmaster@wombacher.cc"
  master_ip   = ""
}

resource "inwx_nameserver_record" "wombacher_dev_legacy_caa_issue" {
  domain  = inwx_nameserver.wombacher_dev_legacy.domain
  name    = inwx_nameserver.wombacher_dev_legacy.domain
  type    = "CAA"
  content = "0 issue \"letsencrypt.org\""
  ttl     = 300
}

resource "inwx_nameserver_record" "wombacher_dev_legacy_caa_issuewild" {
  domain  = inwx_nameserver.wombacher_dev_legacy.domain
  name    = inwx_nameserver.wombacher_dev_legacy.domain
  type    = "CAA"
  content = "0 issuewild \"letsencrypt.org\""
  ttl     = 300
}

resource "inwx_nameserver_record" "wombacher_dev_legacy_caa_iodef" {
  domain  = inwx_nameserver.wombacher_dev_legacy.domain
  name    = inwx_nameserver.wombacher_dev_legacy.domain
  type    = "CAA"
  content = "0 iodef \"mailto:dominik@wombacher.cc\""
  ttl     = 300
}

moved {
  from = module.wombacher_dev.inwx_nameserver.tld
  to   = inwx_nameserver.wombacher_dev_legacy
}

moved {
  from = module.wombacher_dev.inwx_nameserver_record.tld_caa_issue
  to   = inwx_nameserver_record.wombacher_dev_legacy_caa_issue
}

moved {
  from = module.wombacher_dev.inwx_nameserver_record.tld_caa_issuewild
  to   = inwx_nameserver_record.wombacher_dev_legacy_caa_issuewild
}

moved {
  from = module.wombacher_dev.inwx_nameserver_record.tld_caa_iodef
  to   = inwx_nameserver_record.wombacher_dev_legacy_caa_iodef
}
