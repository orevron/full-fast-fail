

resource "azure_storage_container" "fail" {
  name                  = "terraform-container-storage"
  container_access_type = "blob"

  properties = {
    "publicAccess" = "blob"
  }
}
