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
    ace = optional(object({
      id          = optional(string)
      permissions = string
      scope       = optional(string) # Default: "access"
      type        = string
    }))
  }))
}

