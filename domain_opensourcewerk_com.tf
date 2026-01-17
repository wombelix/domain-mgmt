# SPDX-FileCopyrightText: 2026 Dominik Wombacher <dominik@wombacher.cc>
#
# SPDX-License-Identifier: Apache-2.0

module "opensourcewerk_com" {
  source      = "./modules/domains"
  domain_name = "opensourcewerk.com"
  # .com domain doesn't seem to have admin and billig contact anymore
  # set to 0 to avoid constant changes on apply
  contacts_admin   = "0"
  contacts_billing = "0"
}
