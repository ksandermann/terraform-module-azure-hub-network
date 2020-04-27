resource "azurerm_virtual_network" "main" {
  name                = module.naming-hub.vnet_names["main"]
  location            = data.azurerm_resource_group.main.location
  resource_group_name = data.azurerm_resource_group.main.name
  address_space       = var.vnet_main_address_space
  dns_servers         = var.vnet_main_dns_servers

  ddos_protection_plan {
    id     = data.azurerm_network_ddos_protection_plan.main.name
    enable = true
  }

  tags = local.tags_vnet_main
}