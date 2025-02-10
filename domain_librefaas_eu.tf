# SPDX-FileCopyrightText: 2025 Dominik Wombacher <dominik@wombacher.cc>
#
# SPDX-License-Identifier: MIT

module "librefaas_eu" {
  source      = "./modules/domains"
  domain_name = "librefaas.eu"
  extra_data = {
    "EU-COUNTRY-OF-CITIZENSHIP" : "DE",
  }
}
