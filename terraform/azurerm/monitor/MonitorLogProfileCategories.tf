
resource "azurerm_monitor_log_profile" "example" {
  name = "default"
  categories = [
    "Action"
  ]
  locations = [
    "westus",
    "global",
  ]
  retention_policy {
    enabled = true
    days    = 7
  }
}
