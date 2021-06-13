# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used
terraform {
    required_providers {
        azurerm = {
            source                  = "hashicorp/azurerm"
            version                 = "=2.46.0"
        }
    }
}

# Uncomment this provider block if you are using variables (NOT environment variables)
# to provide the azurerm provider requirements.

provider "azurerm" {
    features {}
    subscription_id             = var.subscription_id
    client_id                   = var.client_id
    client_secret               = var.client_secret
    tenant_id                   = var.tenant_id
}


# Need to add resource group for Terraform
resource "azurerm_resource_group" "resource_group" {
    name     = var.resource_group_name
    location = var.resource_group_location
}