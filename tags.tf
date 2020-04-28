locals {
  ### TAGS
  #GENERIC FOR HUB COLLECTION
  tags_hub_generic = module.naming-hub.tags_hub_generic

  #MODULE GENERIC
  tags_module_generic = merge(local.tags_hub_generic,
    {
      terraform-module = "azure-hub-network",
  })

  #SUBENV GENERIC
  tags_subenv_main_generic            = merge(local.tags_module_generic, module.naming-hub.tags_subenv["main"])
  tags_subenv_gateway_generic         = merge(local.tags_module_generic, module.naming-hub.tags_subenv["gateway"])
  tags_subenv_shared_services_generic = merge(local.tags_module_generic, module.naming-hub.tags_subenv["shared_services"])
  tags_subenv_dmz_generic             = merge(local.tags_module_generic, module.naming-hub.tags_subenv["dmz"])

  #VNET
  tags_vnet_main = local.tags_subenv_main_generic

  #NSGS
  tags_nsg_gateway         = local.tags_subenv_gateway_generic
  tags_nsg_shared_services = local.tags_subenv_shared_services_generic
  tags_nsg_dmz             = local.tags_subenv_dmz_generic

  #AFW
  tags_firewall_dmz = local.tags_subenv_dmz_generic
}
