# SPDX-FileCopyrightText: 2025 Dominik Wombacher <dominik@wombacher.cc>
#
# SPDX-License-Identifier: MIT

module "spamoasis_eu" {
  source      = "./modules/domains"
  domain_name = "spamoasis.eu"
  extra_data = {
    "EU-COUNTRY-OF-CITIZENSHIP" : "DE",
  }
}
