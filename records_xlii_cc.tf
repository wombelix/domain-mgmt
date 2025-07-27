# SPDX-FileCopyrightText: 2025 Dominik Wombacher <dominik@wombacher.cc>
#
# SPDX-License-Identifier: MIT

resource "inwx_nameserver_record" "xlii_cc_cname_hub" {
  domain  = "xlii.cc"
  name    = "hub.xlii.cc"
  type    = "CNAME"
  content = "nx31812.your-storageshare.de"
  ttl     = 3600
}
