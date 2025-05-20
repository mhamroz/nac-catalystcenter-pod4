terraform {
  required_providers {
    catalystcenter = {
      source  = "CiscoDevNet/catalystcenter"
      version = "0.2.6"
    }
  }
}

# terraform {
#   backend "http" {
#     skip_cert_verification = true
#   }
# }

provider "catalystcenter" {
  username    = "admin"
  password    = "L1ons@svs"
  url         = "https://172.17.3.101"
  max_timeout = 600
}

module "catalyst_center" {
  source = "git::https://github.com/netascode/terraform-catalystcenter-nac-catalystcenter.git?ref=dev"

  yaml_directories      = ["data/"]
  templates_directories = ["data/templates/"]
}