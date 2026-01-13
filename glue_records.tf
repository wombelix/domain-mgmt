# SPDX-FileCopyrightText: 2026 Dominik Wombacher <dominik@wombacher.cc>
#
# SPDX-License-Identifier: Apache-2.0

# Glue records for wombacher.it nameservers
resource "inwx_glue_record" "ns1_wombacher_it" {
  hostname = "ns1.wombacher.it"
  ip = [
    "192.174.68.104",
    "2001:67c:1bc::104"
  ]
}

resource "inwx_glue_record" "ns2_wombacher_it" {
  hostname = "ns2.wombacher.it"
  ip = [
    "176.97.158.104",
    "2001:67c:10b8::104"
  ]
}

resource "inwx_glue_record" "ns3_wombacher_it" {
  hostname = "ns3.wombacher.it"
  ip = [
    "45.87.158.53",
    "2a02:d500::53"
  ]
}
