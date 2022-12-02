terraform {
    required_providers {
        azurerm = {
            source = "hashicorp/azurerm"
            version = "=3.32.0"
        }
    }
}

variable "az_location" {
    type = string
    default = "westeurope"
}

provider "azurerm" {
    features {}
}

resource "azurerm_resource_group" "rg_weather" {
    name = "rg-weather"
    location = var.az_location
}

resource "azurerm_container_group" "cg_weather" {
    name = "cg-weather"
    location = var.az_location
    resource_group_name = azurerm_resource_group.rg_weather.name

    ip_address_type = "Public"
    dns_name_label = "dnsweather"
    os_type = "Linux"

    container {
        name = "ctr-weather-api"
        image = "steveblomeley/randomweather"
        cpu = "1"
        memory = "1"

        ports {
            port = 80
            protocol = "TCP"
        }
    }
}