# SPDX-FileCopyrightText: 2025 Dominik Wombacher <dominik@wombacher.cc>
#
# SPDX-License-Identifier: MIT

terraform {
  required_version = ">= 1.8"
  required_providers {
    inwx = {
      source  = "inwx/inwx"
      version = "1.4.2"
    }
  }
}

provider "inwx" {
  api_url = "https://api.domrobot.com/jsonrpc/"
}
