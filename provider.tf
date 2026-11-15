# SPDX-FileCopyrightText: 2026 Dominik Wombacher <dominik@wombacher.cc>
#
# SPDX-License-Identifier: Apache-2.0

terraform {
  required_version = ">= 1.12"
  required_providers {
    inwx = {
      source  = "inwx/inwx"
      version = "1.6.4"
    }
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "5.28.1"
    }
  }
}

provider "inwx" {
  api_url = "https://api.domrobot.com/jsonrpc/"
}

provider "cloudflare" {}
