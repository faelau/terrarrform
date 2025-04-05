variable "lidarr_credentials" {
  type = object({ url = string, apiKey = string })
  default = {
    url    = "https://lidarr.princessia.org"
    apiKey = "4c96c46c3b68407eaeb2fd1480dc01d5"
  }
}

variable "prowlarr_credentials" {
  type = object({ url = string, apiKey = string })
  default = {
    url    = "https://prowlarr.laura.services"
    apiKey = "c772cf2fa6fa465dbe4cb7528f2d61a5"
  }
}

variable "radarr_credentials" {
  type = object({ url = string, apiKey = string })
  default = {
    url    = "https://radarr.laura.services"
    apiKey = "9fa54d4701ec401e82a2aa8abdb0a7d8"
  }
}

variable "readarr_credentials" {
  type = object({ url = string, apiKey = string })
  default = {
    url    = "https://readarr-crownpixie.wolverine.mygiga.cloud"
    apiKey = "56e9878038e14b75bd4dd5d74d7bbb03"
  }
}

variable "sonarr_credentials" {
  type = object({ url = string, apiKey = string })
  default = {
    url    = "https://sonarr.laura.services"
    apiKey = "LHRBpDA3SkcDCV9KTsSfy8jMffRGaVXo"
  }
}

variable "sabnzbd_crownpixie_credentials" {
  type = object({ url = string, apiKey = string })
  default = {
    url    = "https://sabnzbd-crownpixie.wolverine.mygiga.cloud"
    apiKey = "WGyW1ZI6lBPK8uvh7RdXhmpIggb8Xpn0"
  }
}

variable "sabnzbd_princessdomino_credentials" {
  type = object({ url = string, apiKey = string })
  default = {
    url    = "https://sabnzbd-princessdomino.venom.mygiga.cloud"
    apiKey = "Nn34sHOH7kPMkvdx3h2ciy6KhHR11gZK"
  }
}

variable "rtorrent_crownpixie_credentials" {
  type = object({ url = string, path = string, username = string, password = string })
  default = {
    url      = "rtorrent-crownpixie.wolverine.mygiga.cloud"
    path     = "/rtrpc/"
    username = "crownpixie"
    password = "ZcG7tXrdr8t8aLT"
  }
}

variable "rtorrent_princessdomino_credentials" {
  type = object({ url = string, path = string, username = string, password = string })
  default = {
    url      = "https://rtorrent-princessdomino.venom.mygiga.cloud"
    path     = "/rtrpc/"
    username = "princessdomino"
    password = "oiFbgU-GJYwCP2V"
  }
}