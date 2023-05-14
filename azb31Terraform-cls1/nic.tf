# Create Virtual Machine Network Interface
resource "azurerm_network_interface" "vm1-nic" {
  name                = "vm1-nic"
  location            = azurerm_resource_group.rg1.location
  resource_group_name = azurerm_resource_group.rg1.name
  ip_configuration {
    name                          = "vm1-nic"
    subnet_id                     = azurerm_subnet.vm-subnet-1.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.vm1-pip.id
  }
  tags = {
    Env = var.env
  }
}

resource "azurerm_network_interface" "vm2-nic" {
  name                = "vm2-nic"
  location            = azurerm_resource_group.rg1.location
  resource_group_name = azurerm_resource_group.rg1.name
  ip_configuration {
    name                          = "vm2-nic"
    subnet_id                     = azurerm_subnet.vm-subnet-1.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.vm2-pip.id
  }
  tags = {
    Env = var.env
  }
}

resource "azurerm_network_interface" "vm3-nic" {
  name                = "vm3-nic"
  location            = azurerm_resource_group.rg1.location
  resource_group_name = azurerm_resource_group.rg1.name
  ip_configuration {
    name                          = "vm3-nic"
    subnet_id                     = azurerm_subnet.vm-subnet-1.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.vm3-pip.id
  }
  tags = {
    Env = var.env
  }
}