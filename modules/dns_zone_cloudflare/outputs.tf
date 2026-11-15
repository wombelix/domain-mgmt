# SPDX-FileCopyrightText: 2026 Dominik Wombacher <dominik@wombacher.cc>
#
# SPDX-License-Identifier: Apache-2.0

output "zone_id" {
  description = "Cloudflare zone ID"
  value       = cloudflare_zone.zone.id
}

output "name_servers" {
  description = "Nameservers Cloudflare assigned to the zone"
  value       = cloudflare_zone.zone.name_servers
}
