data "azurerm_subscription" "this" {
  subscription_id = var.subscription_id
}

data "azurerm_resource_group" "main" {
  name = module.naming-hub.resource_group_names["main"]
}

data "azurerm_resource_group" "gateway" {
  name = module.naming-hub.resource_group_names["gateway"]
}

data "azurerm_resource_group" "shared_services" {
  name = module.naming-hub.resource_group_names["shared_services"]
}

data "azurerm_resource_group" "firewall" {
  name = module.naming-hub.resource_group_names["firewall"]
}

data "azurerm_resource_group" "dmz" {
  name = module.naming-hub.resource_group_names["dmz"]
}

data "azurerm_network_ddos_protection_plan" "main" {
  name                = module.naming-hub.ddos_protection_plan_names["main"]
  resource_group_name = module.naming-hub.resource_group_names["shared_services"]
}
