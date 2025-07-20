# SPDX-FileCopyrightText: 2025 Dominik Wombacher <dominik@wombacher.cc>
#
# SPDX-License-Identifier: MIT

module "wombacher_dev" {
  source              = "./modules/domains"
  domain_name         = "wombacher.dev"
  contacts_registrant = "487953"
  contacts_admin      = "487953"
  caa_iodef_mailto    = "dominik@wombacher.cc"
  extra_data = {
    "ACKNOWLEDGE-SECURE-ONLY-DEV" = "1"
  }

}
