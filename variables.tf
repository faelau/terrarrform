variable "lazylibrarian_credentials" {
  type = object({ url = string, apiKey = string })
  default = {
    url    = "https://lazylibrarian.laura.services"
    apiKey = "c4e0d9bf68de30c3a113d0b1facd27af"
  }
}

variable "lidarr_credentials" {
  type = object({ url = string, apiKey = string })
  default = {
    url    = "https://lidarr.laura.services"
    apiKey = "f457b8d3decf4f9fbd0265f95ba38498"
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

variable "sonarr_credentials" {
  type = object({ url = string, apiKey = string })
  default = {
    url    = "https://sonarr.laura.services"
    apiKey = "LHRBpDA3SkcDCV9KTsSfy8jMffRGaVXo"
  }
}

variable "sabnzbd_credentials" {
  type = object({ url = string, apiKey = string })
  default = {
    url    = "https://sabnzbd-princessdomino.venom.mygiga.cloud"
    apiKey = "Nn34sHOH7kPMkvdx3h2ciy6KhHR11gZK"
  }
}

variable "rtorrent_credentials" {
  type = object({ url = string, path = string, username = string, password = string })
  default = {
    url      = "https://rtorrent-princessdomino.venom.mygiga.cloud"
    path     = "/rtrpc/"
    username = "princessdomino"
    password = "oiFbgU-GJYwCP2V"
  }
}
