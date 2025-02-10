# SPDX-FileCopyrightText: 2025 Dominik Wombacher <dominik@wombacher.cc>
#
# SPDX-License-Identifier: MIT

module "libredms_eu" {
  source      = "./modules/domains"
  domain_name = "libredms.eu"
  extra_data = {
    "EU-COUNTRY-OF-CITIZENSHIP" : "DE",
  }
}
