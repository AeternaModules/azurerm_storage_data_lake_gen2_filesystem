output "storage_data_lake_gen2_filesystems_id" {
  description = "Map of id values across all storage_data_lake_gen2_filesystems, keyed the same as var.storage_data_lake_gen2_filesystems"
  value       = { for k, v in azurerm_storage_data_lake_gen2_filesystem.storage_data_lake_gen2_filesystems : k => v.id if v.id != null && length(v.id) > 0 }
}
output "storage_data_lake_gen2_filesystems_ace" {
  description = "Map of ace values across all storage_data_lake_gen2_filesystems, keyed the same as var.storage_data_lake_gen2_filesystems"
  value       = { for k, v in azurerm_storage_data_lake_gen2_filesystem.storage_data_lake_gen2_filesystems : k => v.ace if v.ace != null && length(v.ace) > 0 }
}
output "storage_data_lake_gen2_filesystems_default_encryption_scope" {
  description = "Map of default_encryption_scope values across all storage_data_lake_gen2_filesystems, keyed the same as var.storage_data_lake_gen2_filesystems"
  value       = { for k, v in azurerm_storage_data_lake_gen2_filesystem.storage_data_lake_gen2_filesystems : k => v.default_encryption_scope if v.default_encryption_scope != null && length(v.default_encryption_scope) > 0 }
}
output "storage_data_lake_gen2_filesystems_group" {
  description = "Map of group values across all storage_data_lake_gen2_filesystems, keyed the same as var.storage_data_lake_gen2_filesystems"
  value       = { for k, v in azurerm_storage_data_lake_gen2_filesystem.storage_data_lake_gen2_filesystems : k => v.group if v.group != null && length(v.group) > 0 }
}
output "storage_data_lake_gen2_filesystems_name" {
  description = "Map of name values across all storage_data_lake_gen2_filesystems, keyed the same as var.storage_data_lake_gen2_filesystems"
  value       = { for k, v in azurerm_storage_data_lake_gen2_filesystem.storage_data_lake_gen2_filesystems : k => v.name if v.name != null && length(v.name) > 0 }
}
output "storage_data_lake_gen2_filesystems_owner" {
  description = "Map of owner values across all storage_data_lake_gen2_filesystems, keyed the same as var.storage_data_lake_gen2_filesystems"
  value       = { for k, v in azurerm_storage_data_lake_gen2_filesystem.storage_data_lake_gen2_filesystems : k => v.owner if v.owner != null && length(v.owner) > 0 }
}
output "storage_data_lake_gen2_filesystems_properties" {
  description = "Map of properties values across all storage_data_lake_gen2_filesystems, keyed the same as var.storage_data_lake_gen2_filesystems"
  value       = { for k, v in azurerm_storage_data_lake_gen2_filesystem.storage_data_lake_gen2_filesystems : k => v.properties if v.properties != null && length(v.properties) > 0 }
}
output "storage_data_lake_gen2_filesystems_storage_account_id" {
  description = "Map of storage_account_id values across all storage_data_lake_gen2_filesystems, keyed the same as var.storage_data_lake_gen2_filesystems"
  value       = { for k, v in azurerm_storage_data_lake_gen2_filesystem.storage_data_lake_gen2_filesystems : k => v.storage_account_id if v.storage_account_id != null && length(v.storage_account_id) > 0 }
}

