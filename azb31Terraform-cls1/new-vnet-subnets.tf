resource "azurerm_virtual_network" "vnet2" {
  name                = var.vnet2
  resource_group_name = azurerm_resource_group.rg2.name
  location            = azurerm_resource_group.rg2.location
  address_space       = [var.vnet2_cidr_space]
}

resource "azurerm_subnet" "new-vm-subnet-1" {
  name                 = var.new_subnet_1
  resource_group_name  = azurerm_resource_group.rg2.name
  virtual_network_name = azurerm_virtual_network.vnet2.name
  address_prefixes     = [var.new_subnet_1_cidr]
}

resource "azurerm_subnet" "new-vm-subnet-2" {
  name                 = var.new_subnet_2
  resource_group_name  = azurerm_resource_group.rg2.name
  virtual_network_name = azurerm_virtual_network.vnet2.name
  address_prefixes     = [var.new_subnet_2_cidr]
}

resource "azurerm_subnet" "new-vm-subnet-3" {
  name                 = var.new_subnet_3
  resource_group_name  = azurerm_resource_group.rg2.name
  virtual_network_name = azurerm_virtual_network.vnet2.name
  address_prefixes     = [var.new_subnet_3_cidr]
}
