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
    
    features {}
    }
    
 terraform {
  backend "azurerm" {
   
  }
} 

#RG01
resource "azurerm_resource_group" "rg01" {
    name = "demo-rg02"
    location = "East US"
      tags = {
        "Environment" = "Test"
        "Deployed from" = "Azure DevOps"

    }
}
