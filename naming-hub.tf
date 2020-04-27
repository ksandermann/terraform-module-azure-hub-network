module "naming-hub" {
  source          = "github.com/ksandermann/terraform-module-azure-naming-hub?ref=init"
  subscription_id = var.subscription_id
  organisation    = var.organisation
  environment     = var.environment
  location        = var.location_main
}
