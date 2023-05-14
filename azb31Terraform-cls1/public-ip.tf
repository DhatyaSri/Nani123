resource "azurerm_public_ip" "vm1-pip" {
  name                = "vm1-pip"
  resource_group_name = azurerm_resource_group.rg1.name
  location            = azurerm_resource_group.rg1.location
  allocation_method   = "Dynamic"

  tags = {
    Env = var.env
  }
}

resource "azurerm_public_ip" "vm2-pip" {
  name                = "vm2-pip"
  resource_group_name = azurerm_resource_group.rg1.name
  location            = azurerm_resource_group.rg1.location
  allocation_method   = "Dynamic"

  tags = {
    Env = var.env
  }
}

resource "azurerm_public_ip" "vm3-pip" {
  name                = "vm3-pip"
  resource_group_name = azurerm_resource_group.rg1.name
  location            = azurerm_resource_group.rg1.location
  allocation_method   = "Dynamic"

  tags = {
    Env = var.env
  }
}