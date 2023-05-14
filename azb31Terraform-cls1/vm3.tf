resource "azurerm_linux_virtual_machine" "vm3" {
  name                = "vm3"
  resource_group_name = azurerm_resource_group.rg1.name
  location            = azurerm_resource_group.rg1.location
  size                = var.vm_size
  admin_username      = var.admin_username
  #admin_password                  = element(azurerm_key_vault_secret.vm-passwords.*.value, count.index)
  admin_password                  = "India@123456"
  disable_password_authentication = false
  network_interface_ids           = [azurerm_network_interface.vm3-nic.id]

  os_disk {
    name                 = "vm3OSDisk"
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
    disk_size_gb         = "30"
  }
  identity {
    type = "SystemAssigned"
  }
  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-focal-daily"
    sku       = "20_04-daily-lts-gen2"
    version   = "latest"
  }
}