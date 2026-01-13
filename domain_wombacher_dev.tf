# SPDX-FileCopyrightText: 2026 Dominik Wombacher <dominik@wombacher.cc>
#
# SPDX-License-Identifier: Apache-2.0

module "wombacher_dev" {
  source      = "./modules/domains"
  domain_name = "wombacher.dev"
  extra_data = {
    "ACKNOWLEDGE-SECURE-ONLY-DEV" = "1"
  }
  # .dev domain doesn't seem to have admin and billig contact anymore
  # set to 0 to avoid constant changes on apply
  contacts_admin   = "0"
  contacts_billing = "0"
}
