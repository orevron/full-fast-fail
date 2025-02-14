
resource "azurerm_mariadb_server" "example" {
  name                          = var.server_name
  location                      = var.resource_group.location
  resource_group_name           = var.resource_group.name
  administrator_login           = var.admin_login
  administrator_login_password  = random_string.password.result
  sku_name                      = "B_Gen5_2"
  storage_mb                    = 5120
  version                       = "10.2"
  auto_grow_enabled             = true
  backup_retention_days         = 7
  geo_redundant_backup_enabled  = false
  public_network_access_enabled = true
  #test this i guess
  ssl_enforcement_enabled = false
}
