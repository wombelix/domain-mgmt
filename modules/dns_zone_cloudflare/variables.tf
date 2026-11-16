# SPDX-FileCopyrightText: 2026 Dominik Wombacher <dominik@wombacher.cc>
#
# SPDX-License-Identifier: Apache-2.0

variable "account_id" {
  type        = string
  description = "Cloudflare Account ID that owns the zone"
}

variable "domain_name" {
  type        = string
  description = "full domain name"
}

# CAA iodef mailto address
variable "caa_iodef_mailto" {
  type        = string
  description = "Email address for CAA iodef record"
  default     = "dominik@wombacher.cc"
}

variable "caa_ttl" {
  type        = number
  description = "TTL of the CAA records"
  default     = 3600
}

variable "dnssec" {
  type        = bool
  description = "Enable DNSSEC signing for the zone."
  default     = true
}
