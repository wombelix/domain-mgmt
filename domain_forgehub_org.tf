# SPDX-FileCopyrightText: 2026 Dominik Wombacher <dominik@wombacher.cc>
#
# SPDX-License-Identifier: Apache-2.0

module "forgehub_org" {
  source      = "./modules/domains"
  domain_name = "forgehub.org"
}
