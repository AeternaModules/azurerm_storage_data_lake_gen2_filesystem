output "storage_data_lake_gen2_filesystems" {
  description = "All storage_data_lake_gen2_filesystem resources"
  value       = azurerm_storage_data_lake_gen2_filesystem.storage_data_lake_gen2_filesystems
}
output "storage_data_lake_gen2_filesystems_ace" {
  description = "List of ace values across all storage_data_lake_gen2_filesystems"
  value       = [for k, v in azurerm_storage_data_lake_gen2_filesystem.storage_data_lake_gen2_filesystems : v.ace]
}
output "storage_data_lake_gen2_filesystems_default_encryption_scope" {
  description = "List of default_encryption_scope values across all storage_data_lake_gen2_filesystems"
  value       = [for k, v in azurerm_storage_data_lake_gen2_filesystem.storage_data_lake_gen2_filesystems : v.default_encryption_scope]
}
output "storage_data_lake_gen2_filesystems_group" {
  description = "List of group values across all storage_data_lake_gen2_filesystems"
  value       = [for k, v in azurerm_storage_data_lake_gen2_filesystem.storage_data_lake_gen2_filesystems : v.group]
}
output "storage_data_lake_gen2_filesystems_name" {
  description = "List of name values across all storage_data_lake_gen2_filesystems"
  value       = [for k, v in azurerm_storage_data_lake_gen2_filesystem.storage_data_lake_gen2_filesystems : v.name]
}
output "storage_data_lake_gen2_filesystems_owner" {
  description = "List of owner values across all storage_data_lake_gen2_filesystems"
  value       = [for k, v in azurerm_storage_data_lake_gen2_filesystem.storage_data_lake_gen2_filesystems : v.owner]
}
output "storage_data_lake_gen2_filesystems_properties" {
  description = "List of properties values across all storage_data_lake_gen2_filesystems"
  value       = [for k, v in azurerm_storage_data_lake_gen2_filesystem.storage_data_lake_gen2_filesystems : v.properties]
}
output "storage_data_lake_gen2_filesystems_storage_account_id" {
  description = "List of storage_account_id values across all storage_data_lake_gen2_filesystems"
  value       = [for k, v in azurerm_storage_data_lake_gen2_filesystem.storage_data_lake_gen2_filesystems : v.storage_account_id]
}

