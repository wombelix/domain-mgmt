# SPDX-FileCopyrightText: 2026 Dominik Wombacher <dominik@wombacher.cc>
#
# SPDX-License-Identifier: Apache-2.0

variable "domain_name" {
  type        = string
  description = "full domain name"
}

variable "nameservers" {
  type        = list(string)
  description = "list of nameservers of the DNS provider hosting the zone"
}

variable "registration_period" {
  type        = string
  description = "Registration period of the domain. Valid types: https://www.inwx.de/en/help/apidoc/f/ch03.html#type.period"
  default     = "1Y"
}

variable "renewal_mode" {
  type        = string
  description = "Renewal mode of the domain. One of: AUTORENEW, AUTODELETE, AUTOEXPIRE."
  default     = "AUTORENEW"
}

variable "transfer_lock" {
  type        = bool
  description = "Whether the domain transfer lock should be enabled."
  default     = true
}

variable "contacts_registrant" {
  type        = string
  description = "Id of the registrant contact"
  default     = "487953"
}

variable "contacts_admin" {
  type        = string
  description = "Id of the admin contact"
  default     = "487953"
}

variable "contacts_tech" {
  type        = string
  description = "Id of the tech contact"
  default     = "487953"
}

variable "contacts_billing" {
  type        = string
  description = "Id of the billing contact"
  default     = "487953"
}

# Domain extra data
variable "extra_data" {
  type        = map(string)
  description = "Extra data for the domain"
  default     = {}
}

variable "dnssec_key" {
  type = object({
    public_key = string
    algorithm  = number
  })
  description = "DNSSEC key of the DNS provider, sent to the registry as DS. null means no DS."
  default     = null
}
