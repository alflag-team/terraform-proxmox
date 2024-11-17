terraform {
  required_providers {
    proxmox = {
      source = "Telmate/proxmox"
      version = "3.0.1-rc4"
    }
  }

  cloud {
    organization = "alflag"

    workspaces {
      name = "cache"
    }
  }

  # backend "local" {
  #   path = "local.tfstate"
  # }
}
