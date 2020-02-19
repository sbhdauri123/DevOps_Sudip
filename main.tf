
provider "azurerm" {
    subscription_id = "3e868ff3-d314-42db-b61a-009e4b8bc579"
    client_id       = "1f32419d-c1be-4918-b6af-01171988e69a"
    client_secret   = "25e06ebb-dccc-42c0-aa5b-91eddbb8e9c2"
    tenant_id       = "a4481216-6ec9-4cab-a365-de0c9b2f6c9a"
}

resource "azurerm_resource_group" "tf_azure_guide" {
  name     = "${var.resource_group}"
  location = "${var.location}"
}

