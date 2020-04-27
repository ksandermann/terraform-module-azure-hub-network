locals {
  ### TAGS
  tags_generic = module.naming-hub.tags_generic

  tags_module = merge(local.tags_generic,
    {
      module = "azure-hub-network",
  })

  tags_vnet_hub = merge(local.tags_generic,
    {
      vnet_type = "hub"
  })

  tags_subenv_gateway = merge(local.tags_generic,
    {
      sub_environment = "gateway"
  })

  tags_subenv_shared_services = merge(local.tags_generic,
    {
      sub_environment = "shared_services"
  })

  tags_subenv_dmz = merge(local.tags_generic,
    {
      sub_environment = "dmz"
  })

  tags_nsg_gateway         = tags_subenv_gateway
  tags_nsg_shared_services = tags_subenv_shared_services
  tags_nsg_dmz             = tags_subenv_dmz
}
