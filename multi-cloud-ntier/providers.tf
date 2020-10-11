provider "aws" {
  region     = var.region
}

provider "azurerm" {
  version = "~>2.0"
  features {}
}