terraform {
  backend "azurerm" {
    resource_group_name  = "#{resourceGroupName}"
    storage_account_name = "#{storageAccountName}"
    container_name       = "#{containerName}"
    key                  = "#{key}"
    subscription_id      = "#{subscriptionIDInfraSupport}"
  }
}

provider "azurerm" {
  version = "=2.0.0"
  subscription_id = "#{subscriptionIDWbDev}"
  client_id       = "#{clientID}"
  client_secret   = "#{clientSecret}"
  tenant_id       = "#{tenantID}"
  features {}
}

resource "azurerm_resource_group" "myterraformgroup" {
  name     = "#{resourceGroupNameTest}"
  location = "#{location}"
}
