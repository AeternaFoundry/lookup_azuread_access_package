variable "access_package_lookup" {
  description = <<EOT
Map of access_package_lookup, attributes below
Optional:
    - catalog_id
    - display_name
    - object_id
    - timeouts (block):
        - read (optional)
EOT

  type = map(object({
    catalog_id   = optional(string)
    display_name = optional(string)
    object_id    = optional(string)
    timeouts = optional(object({
      read = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.access_package_lookup : (
        v.object_id == null || (can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.object_id)))
      )
    ])
    error_message = "must be a valid UUID"
  }
  validation {
    condition = alltrue([
      for k, v in var.access_package_lookup : (
        v.display_name == null || (length(v.display_name) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.access_package_lookup : (
        v.catalog_id == null || (can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.catalog_id)))
      )
    ])
    error_message = "must be a valid UUID"
  }
}

