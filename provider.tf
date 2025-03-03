terraform {
  required_providers {
    prowlarr = {
      source = "devopsarr/prowlarr"
      version = "3.0.2"
    }
    radarr = {
      source = "devopsarr/radarr"
      version = "2.3.2"
    }
    sonarr = {
      source = "devopsarr/sonarr"
      version = "3.4.0"
    }
  }
}

provider "prowlarr" {
  url     = var.prowlarr_credentials.url
  api_key = var.prowlarr_credentials.apiKey
}

provider "radarr" {
  url     = var.radarr_credentials.url
  api_key = var.radarr_credentials.apiKey
}

provider "sonarr" {
  url     = var.sonarr_credentials.url
  api_key = var.sonarr_credentials.apiKey
}