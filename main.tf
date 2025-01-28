terraform {
  required_providers {
    catalystcenter = {
      source = "CiscoDevNet/catalystcenter"
    }
  }
}

provider "catalystcenter" {
  username    = "username"
  password    = "password"
  url         = "https://dnac.url"
  max_timeout = 1200
}

module "catalyst_center" {
  source = "git::https://www.github.com/netascode/terraform-catalystcenter-nac-catalystcenter?ref=dev"

  yaml_directories      = ["data/"]
  templates_directories = ["data/templates/"]
}