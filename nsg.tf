resource "azurerm_network_security_group" "gateway" {
  name                = module.naming-hub.nsg_names["gateway"]
  location            = var.location_main
  resource_group_name = data.azurerm_resource_group.gateway.name

  tags = local.tags_nsg_gateway
}

resource "azurerm_network_security_group" "shared_services" {
  name                = module.naming-hub.nsg_names["shared_services"]
  location            = var.location_main
  resource_group_name = data.azurerm_resource_group.shared_services.name

  tags = local.tags_nsg_shared_services
}

resource "azurerm_network_security_group" "dmz" {
  name                = module.naming-hub.nsg_names["dmz"]
  location            = var.location_main
  resource_group_name = data.azurerm_resource_group.dmz.name

  tags = local.tags_nsg_dmz
}





