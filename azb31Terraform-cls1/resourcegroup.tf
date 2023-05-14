resource "azurerm_resource_group" "rg1" {
  name     = "azb31rg1"
  location = "eastus"
}

resource "azurerm_resource_group" "rg2" {
  name     = var.rg2
  location = var.rg2location
}




#resource <resource_type> <resource_name> {
#    arg1 = ""
#    arg2 = ""
#    arg3 = ""
#}

