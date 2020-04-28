resource "azurerm_firewall" "dmz" {
  name                = module.naming-hub.azure_firewall_names["dmz"]
  location            = data.azurerm_resource_group.main.location
  resource_group_name = data.azurerm_resource_group.main.name
  zones               = var.firewall_dmz_zones
  tags                = local.tags_firewall_dmz

  ip_configuration {
    name                 = format("%s%s", module.naming-hub.azure_firewall_names["dmz"], "IP001")
    subnet_id            = azurerm_subnet.azure_firewall.id
    public_ip_address_id = azurerm_public_ip.azure_firewall_dmz.id
  }
}

resource "azurerm_public_ip" "azure_firewall_dmz" {
  name                = format("%s%s", module.naming-hub.azure_firewall_names["dmz"], "PUB001")
  location            = data.azurerm_resource_group.main.location
  resource_group_name = data.azurerm_resource_group.main.name
  allocation_method   = "Static"
  sku                 = "Standard"
  tags                = local.tags_firewall_dmz

}
