# SPDX-FileCopyrightText: 2025 Dominik Wombacher <dominik@wombacher.cc>
#
# SPDX-License-Identifier: MIT

module "wombacher_dev" {
  source      = "./modules/domains"
  domain_name = "wombacher.dev"
  extra_data = {
    "ACKNOWLEDGE-SECURE-ONLY-DEV" = "1"
  }

}
