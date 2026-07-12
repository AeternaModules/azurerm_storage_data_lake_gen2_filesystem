output "storage_data_lake_gen2_filesystems_ace" {
  description = "Map of ace values across all storage_data_lake_gen2_filesystems, keyed the same as var.storage_data_lake_gen2_filesystems"
  value       = { for k, v in azurerm_storage_data_lake_gen2_filesystem.storage_data_lake_gen2_filesystems : k => v.ace }
}
output "storage_data_lake_gen2_filesystems_default_encryption_scope" {
  description = "Map of default_encryption_scope values across all storage_data_lake_gen2_filesystems, keyed the same as var.storage_data_lake_gen2_filesystems"
  value       = { for k, v in azurerm_storage_data_lake_gen2_filesystem.storage_data_lake_gen2_filesystems : k => v.default_encryption_scope }
}
output "storage_data_lake_gen2_filesystems_group" {
  description = "Map of group values across all storage_data_lake_gen2_filesystems, keyed the same as var.storage_data_lake_gen2_filesystems"
  value       = { for k, v in azurerm_storage_data_lake_gen2_filesystem.storage_data_lake_gen2_filesystems : k => v.group }
}
output "storage_data_lake_gen2_filesystems_name" {
  description = "Map of name values across all storage_data_lake_gen2_filesystems, keyed the same as var.storage_data_lake_gen2_filesystems"
  value       = { for k, v in azurerm_storage_data_lake_gen2_filesystem.storage_data_lake_gen2_filesystems : k => v.name }
}
output "storage_data_lake_gen2_filesystems_owner" {
  description = "Map of owner values across all storage_data_lake_gen2_filesystems, keyed the same as var.storage_data_lake_gen2_filesystems"
  value       = { for k, v in azurerm_storage_data_lake_gen2_filesystem.storage_data_lake_gen2_filesystems : k => v.owner }
}
output "storage_data_lake_gen2_filesystems_properties" {
  description = "Map of properties values across all storage_data_lake_gen2_filesystems, keyed the same as var.storage_data_lake_gen2_filesystems"
  value       = { for k, v in azurerm_storage_data_lake_gen2_filesystem.storage_data_lake_gen2_filesystems : k => v.properties }
}
output "storage_data_lake_gen2_filesystems_storage_account_id" {
  description = "Map of storage_account_id values across all storage_data_lake_gen2_filesystems, keyed the same as var.storage_data_lake_gen2_filesystems"
  value       = { for k, v in azurerm_storage_data_lake_gen2_filesystem.storage_data_lake_gen2_filesystems : k => v.storage_account_id }
}

