# SPDX-FileCopyrightText: 2026 Dominik Wombacher <dominik@wombacher.cc>
#
# SPDX-License-Identifier: Apache-2.0

variable "domain_name" {
  type        = string
  description = "full domain name"
}

variable "nameservers" {
  type        = list(string)
  description = "list of nameservers"
  default = [
    "ns.inwx.de",
    "ns2.inwx.de",
    "ns3.inwx.eu"
  ]
}

variable "automated_dnssec" {
  type        = bool
  description = "Automated DNSSEC management for a domain."
  default     = true
}

variable "nameserver_type" {
  type        = string
  description = "Type of the nameserver zone. One of: MASTER, SLAVE"
  default     = "MASTER"
}

# only used by type SECONDARY
variable "master_ip" {
  type        = string
  description = "Master IP address"
  default     = ""
}

# only used by type MASTER
variable "soa_mail" {
  type        = string
  description = "Email address for SOA record"
  default     = "hostmaster@wombacher.cc"
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
  description = "Id of the tech contact"
  default     = "487953"
}

# CAA iodef mailto address
variable "caa_iodef_mailto" {
  type        = string
  description = "Email address for CAA iodef record"
  default     = "dominik@wombacher.cc"
}

# Domain extra data
variable "extra_data" {
  type        = map(string)
  description = "Extra data for the domain"
  default     = {}
}
