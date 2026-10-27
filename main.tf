data "azuread_access_package" "access_package_lookup" {
  for_each = var.access_package_lookup

  catalog_id   = each.value.catalog_id
  display_name = each.value.display_name
  object_id    = each.value.object_id

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      read = timeouts.value.read
    }
  }
}

