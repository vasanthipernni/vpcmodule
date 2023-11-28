
resource "azurerm_virtual_network" "example" {
  name                = var.vpc-name
  resource_group_name = var.rg-name
  location            = "East US 2"
  address_space       = var.vpc-cidr
  
  tags = merge(var.tags,var.vpc_tags,
   {"Name" = var.vpc-name})
}

resource "azurerm_subnet" "example" {
  count = length(var.subnet-name)
  name                 = var.subnet-name[count.index]
  resource_group_name  = var.rg-name
  virtual_network_name = var.vpc-name
  address_prefixes     = ["10.0.${count.index + 1}.0/24"]
  # availability_zone    = "${count.index + 1}"

}