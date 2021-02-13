module "containerRegistry" {
  source         = "./module-azureContainerRegistry"
  name           = "testContainerRegistry${local.env}"
  resource_group = local.resource_group
  location       = local.location
}
