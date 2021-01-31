resource "azurerm_resource_group" "test" {
  name = local.resource_group
  location = local.location
  tags = {
    Environment = terraform.workspace
    Role        = "resourcegroup"
  }
}

module "containerRegistry" {
  source         = "./module-azureContainerRegistry"
  name           = "testContainerRegistry${local.env}"
  resource_group = local.resource_group
  location       = local.location
}
