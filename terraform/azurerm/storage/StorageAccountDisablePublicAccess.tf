
resource "azurerm_storage_account" "example" {
  name                      = "storageaccountname"
  resource_group_name       = azurerm_resource_group.example.name
  location                  = azurerm_resource_group.example.location
  account_tier              = "Standard"
  account_replication_type  = "GRS"
  enable_https_traffic_only = false
  allow_blob_public_access  = true

  tags = {
    environment = "staging"
  }
}
