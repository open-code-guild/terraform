terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "3.23.0"
    }
  }
  cloud {
    organization = "zuedev"
    workspaces {
      name = "open-code-guild-terraform"
    }
  }
}
