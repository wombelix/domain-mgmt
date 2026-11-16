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

output "dnssec_key" {
  description = "DNSSEC key for the DS at the registrar, null if DNSSEC is off"
  value = var.dnssec ? {
    public_key = cloudflare_zone_dnssec.zone[0].public_key
    algorithm  = tonumber(cloudflare_zone_dnssec.zone[0].algorithm)
  } : null
}
