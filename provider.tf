terraform {
  required_providers {
    lidarr = {
      source = "devopsarr/lidarr"
      version = "1.13.0"
    }
    prowlarr = {
      source = "devopsarr/prowlarr"
      version = "3.0.2"
    }
    radarr = {
      source = "devopsarr/radarr"
      version = "2.3.2"
    }
    readarr = {
      source = "devopsarr/readarr"
      version = "2.1.0"
    }
    sonarr = {
      source = "devopsarr/sonarr"
      version = "3.4.0"
    }
  }
}

provider "lidarr" {
  url     = var.lidarr_credentials.url
  api_key = var.lidarr_credentials.apiKey
}

provider "prowlarr" {
  url     = var.prowlarr_credentials.url
  api_key = var.prowlarr_credentials.apiKey
}

provider "radarr" {
  url     = var.radarr_credentials.url
  api_key = var.radarr_credentials.apiKey
}

provider "readarr" {
  url     = var.readarr_credentials.url
  api_key = var.readarr_credentials.apiKey
}

provider "sonarr" {
  url     = var.sonarr_credentials.url
  api_key = var.sonarr_credentials.apiKey
}