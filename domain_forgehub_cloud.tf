# SPDX-FileCopyrightText: 2025 Dominik Wombacher <dominik@wombacher.cc>
#
# SPDX-License-Identifier: MIT

module "forgehub_cloud" {
  source      = "./modules/domains"
  domain_name = "forgehub.cloud"
}
