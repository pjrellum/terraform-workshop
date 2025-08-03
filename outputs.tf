output "resource_group_name" {
  description = "Naam van de aangemaakte resource group"
  value       = azurerm_resource_group.workshop.name
}

output "storage_account_name" {
  description = "Naam van de aangemaakte storage account"
  value       = azurerm_storage_account.workshop.name
}

output "storage_account_url" {
  description = "Primary blob endpoint van de storage account"
  value       = azurerm_storage_account.workshop.primary_blob_endpoint
}

output "location" {
  description = "Azure regio waar resources zijn aangemaakt"
  value       = azurerm_resource_group.workshop.location
}

output "current_user" {
  description = "Huidige Azure gebruiker/service principal"
  value       = data.azurerm_client_config.current.object_id
}