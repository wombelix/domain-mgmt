# SPDX-FileCopyrightText: 2025 Dominik Wombacher <dominik@wombacher.cc>
#
# SPDX-License-Identifier: MIT

resource "inwx_nameserver_record" "dominik_wombacher_de_url_apex" {
  domain            = "dominik-wombacher.de"
  name              = "dominik-wombacher.de"
  type              = "URL"
  content           = "https://dominik.wombacher.cc"
  url_redirect_type = "HEADER301"
  prio              = 301
  ttl               = 3600
}

resource "inwx_nameserver_record" "dominik_wombacher_de_url_www" {
  domain            = "dominik-wombacher.de"
  name              = "www.dominik-wombacher.de"
  type              = "URL"
  content           = "https://dominik.wombacher.cc"
  url_redirect_type = "HEADER301"
  prio              = 301
  ttl               = 3600
}

resource "inwx_nameserver_record" "dominik_wombacher_de_a_web" {
  domain  = "dominik-wombacher.de"
  name    = "web.dominik-wombacher.de"
  type    = "A"
  content = "37.221.195.249"
  ttl     = 300
}

resource "inwx_nameserver_record" "dominik_wombacher_de_aaaa_web" {
  domain  = "dominik-wombacher.de"
  name    = "web.dominik-wombacher.de"
  type    = "AAAA"
  content = "2a03:4000:8:7b:37:221:195:249"
  ttl     = 300
}
