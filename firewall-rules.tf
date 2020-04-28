resource "azurerm_firewall_network_rule_collection" "example" {
  name                = "testcollection"
  azure_firewall_name = azurerm_firewall.hub.name
  resource_group_name = data.azurerm_resource_group.main.name
  priority            = 100
  action              = "Allow"

  rule {
    name = "testrule"

    source_addresses = [
      "0.0.0.0/0",
    ]

    destination_ports = [
      "443",
    ]

    destination_addresses = [
      "0.0.0.0/0"
    ]

    protocols = [
      "TCP",
    ]
  }
}
