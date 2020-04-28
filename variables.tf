variable "subscription_id" {
  type = string
}

variable "organisation" {
  type = string
}

variable "environment" {
  type = string
}

variable "location_main" {
  description = "Main location of the environment. Not DR location."
  type        = string
}

variable "vnet_main_dns_servers" {
}

variable "subnet_shared_services_cidr" {
}

variable "subnet_gateway_cidr" {
}

variable "subnet_dmz_cidr" {
}

variable "firewall_dmz_zones" {
  type = list(number)
}
