output "access_package_lookup_id" {
  description = "Map of id values across all access_package_lookup, keyed the same as var.access_package_lookup"
  value       = { for k, v in data.azuread_access_package.access_package_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "access_package_lookup_catalog_id" {
  description = "Map of catalog_id values across all access_package_lookup, keyed the same as var.access_package_lookup"
  value       = { for k, v in data.azuread_access_package.access_package_lookup : k => v.catalog_id if v.catalog_id != null && length(v.catalog_id) > 0 }
}
output "access_package_lookup_description" {
  description = "Map of description values across all access_package_lookup, keyed the same as var.access_package_lookup"
  value       = { for k, v in data.azuread_access_package.access_package_lookup : k => v.description if v.description != null && length(v.description) > 0 }
}
output "access_package_lookup_display_name" {
  description = "Map of display_name values across all access_package_lookup, keyed the same as var.access_package_lookup"
  value       = { for k, v in data.azuread_access_package.access_package_lookup : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "access_package_lookup_hidden" {
  description = "Map of hidden values across all access_package_lookup, keyed the same as var.access_package_lookup"
  value       = { for k, v in data.azuread_access_package.access_package_lookup : k => v.hidden if v.hidden != null }
}
output "access_package_lookup_object_id" {
  description = "Map of object_id values across all access_package_lookup, keyed the same as var.access_package_lookup"
  value       = { for k, v in data.azuread_access_package.access_package_lookup : k => v.object_id if v.object_id != null && length(v.object_id) > 0 }
}

