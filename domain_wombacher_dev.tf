# SPDX-FileCopyrightText: 2025 Dominik Wombacher <dominik@wombacher.cc>
#
# SPDX-License-Identifier: MIT

module "wombacher_dev" {
  source      = "./modules/domains"
  domain_name = "wombacher.dev"
}
