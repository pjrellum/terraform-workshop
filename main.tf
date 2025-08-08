# In locals voor environment-specifieke configuratie
locals {
  storage_tier = var.environment == "prd" ? "Premium" : "Standard"
}

# Random suffix om storage account naam uniek te maken
resource "random_id" "suffix" {
  byte_length = 4
}

# Resource Group
resource "azurerm_resource_group" "workshop" {
  name     = "rg-terraform-workshop-${var.student_name}-${var.environment}"
  location = var.location
  tags     = var.tags
}

# Storage Account
resource "azurerm_storage_account" "workshop" {
  name                     = "st${var.student_name}${var.environment}${random_id.suffix.hex}"
  resource_group_name      = azurerm_resource_group.workshop.name
  location                 = azurerm_resource_group.workshop.location
  account_tier             = local.storage_tier
  account_replication_type = "LRS"
  
  # Minimale configuratie voor workshop
  allow_nested_items_to_be_public = false
  
  tags = var.tags
}

# Storage Container voor demo
resource "azurerm_storage_container" "workshop" {
  name                  = "workshop-files"
  storage_account_id    = azurerm_storage_account.workshop.id
  container_access_type = "private"
}
