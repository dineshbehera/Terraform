# Create a resource group
resource "azurerm_resource_group" "ntier" {
  #name      = "ntier"
  #location  = "EastUs"
  name      = var.rgname
  location  = var.location
  tags      = {
      Purpose   = "Learning",
      CreatedBy = "Terraform"
  } 
  
}

# Create a virtual network within the resource group
resource "azurerm_virtual_network" "example" {
  name                = "ntier"
  resource_group_name = var.rgname
  location            = var.location
  address_space       = [var.vnet_cidr_range]
  tags      = {
      Resource   = "network"
  }

  subnet {
      name          = var.subnet_names[0]
      address_prefix = cidrsubnet(var.vnet_cidr_range,8,0)
  }

   subnet {
      name          = var.subnet_names[1]
      address_prefix = cidrsubnet(var.vnet_cidr_range,8,1)
  }

    subnet {
      name          = var.subnet_names[2]
      address_prefix = cidrsubnet(var.vnet_cidr_range,8,2)
  }

    subnet {
      name          = var.subnet_names[3]
      address_prefix = cidrsubnet(var.vnet_cidr_range,8,3)
  }

}
