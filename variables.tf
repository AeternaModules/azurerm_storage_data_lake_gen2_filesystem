variable "storage_data_lake_gen2_filesystems" {
  description = <<EOT
Map of storage_data_lake_gen2_filesystems, attributes below
Required:
    - name
    - storage_account_id
Optional:
    - default_encryption_scope
    - group
    - owner
    - properties
    - ace (block):
        - id (optional)
        - permissions (required)
        - scope (optional)
        - type (required)
EOT

  type = map(object({
    name                     = string
    storage_account_id       = string
    default_encryption_scope = optional(string)
    group                    = optional(string)
    owner                    = optional(string)
    properties               = optional(map(string))
    ace = optional(list(object({
      id          = optional(string)
      permissions = string
      scope       = optional(string) # Default: "access"
      type        = string
    })))
  }))
  # --- Unconfirmed validation candidates, derived from azurerm_storage_data_lake_gen2_filesystem's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: storage_account_id
  #   source:    [from commonids.ValidateStorageAccountID] !ok
  # path: storage_account_id
  #   source:    [from commonids.ValidateStorageAccountID] err != nil
  # path: default_encryption_scope
  #   source:    [from validate.StorageEncryptionScopeName] !regexp.MustCompile("^[0-9a-zA-Z]{4,63}$").MatchString(input)
  # path: owner
  #   source:    validation.Any(...) - no translation rule yet, add one
  # path: group
  #   source:    validation.Any(...) - no translation rule yet, add one
  # path: ace.scope
  #   condition: contains(["default", "access"], value)
  #   message:   must be one of: default, access
  # path: ace.type
  #   condition: contains(["user", "group", "mask", "other"], value)
  #   message:   must be one of: user, group, mask, other
  # path: ace.id
  #   condition: can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", value))
  #   message:   must be a valid UUID
  # path: ace.permissions
  #   source:    [from validate.ADLSAccessControlPermissions] !ok
  # path: ace.permissions
  #   source:    [from validate.ADLSAccessControlPermissions] err != nil
}

