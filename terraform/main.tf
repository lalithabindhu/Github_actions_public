terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

provider "azurerm" {
    #skip_provider_registration = true
    /* subscription_id = "f6e79ccd-3633-4139-ae22-9e5b809085d6"
    client_id = "39c62b3e-8a42-405d-b2cf-1256aa07c70c"
    client_secret = "fKT8Q~-~xUQhN28Jq5JAlXJpqJt-OLfUCR1LOc4M"
    tenant_id = "e59c84a4-af3c-4b74-8a18-02eee8993bfb" */
    features {}
    }
    
 terraform {
  backend "azurerm" {
    /* resource_group_name  = "iactestbackend"
    storage_account_name = "iactestsa1"
    container_name       = "iactestcont"
    key                  = "iactestkey.tfstate"
    access_key           = "i8bVoPnxQCrG6sfKjV94MPg7FDjjmaCayGdv9oeqCYsxocwSxtPY21znlu18q+q/oVNg3+nJ98fo+AStHwIfaA==" */

  }
} 

#RG01
resource "azurerm_resource_group" "rg01" {
    name = "demo-rg01"
    location = "East US"
      tags = {
        "Environment" = "Test"
        "Deployed from" = "Azure DevOps"

    }
}
