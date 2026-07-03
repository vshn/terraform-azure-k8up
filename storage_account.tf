locals {
  sanitized_storage_account_name = replace(var.storage_account_name, "-", "")
}

resource "azurerm_storage_account" "storage_account" {
  name                             = local.sanitized_storage_account_name
  resource_group_name              = var.resource_group.name
  location                         = var.resource_group.location
  allow_nested_items_to_be_public  = false
  cross_tenant_replication_enabled = false
  account_kind                     = var.account_kind
  account_tier                     = "Standard"
  account_replication_type         = "LRS"
  access_tier                      = "Cool"
}
