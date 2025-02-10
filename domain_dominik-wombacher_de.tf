# SPDX-FileCopyrightText: 2025 Dominik Wombacher <dominik@wombacher.cc>
#
# SPDX-License-Identifier: MIT

module "dominik-wombacher_de" {
  source              = "./modules/domains"
  domain_name         = "dominik-wombacher.de"
  contacts_registrant = "487953"
  contacts_admin      = "487953"
  caa_iodef_mailto    = "dominik@wombacher.cc"
}
