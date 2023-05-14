foreach ($i in 1..3)
{
terraform destroy -target azurerm_linux_virtual_machine.vm$i --auto-approve
}