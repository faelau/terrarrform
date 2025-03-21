# ---------------------------------------------------------------------------------------------------------------------
# INDEXERS
# ---------------------------------------------------------------------------------------------------------------------

resource "prowlarr_indexer" "nzb_su" {
  enable          = true
  name            = "Nzb.su"
  implementation  = "Newznab"
  config_contract = "NewznabSettings"
  protocol        = "usenet"
  priority        = 25
  app_profile_id  = 1
  fields = [
    {
      name       = "baseUrl"
      text_value = "https://api.nzb.su"
    },
    {
      name       = "apiPath"
      text_value = "/api"
    },
    {
      name            = "apiKey"
      sensitive_value = "1b65e4cb76d1b421c7d022cabef16fac"
    },
    {
      name       = "vipExpiration"
      text_value = "2026-03-16"
    },
    {
      name         = "baseSettings.limitsUnit"
      number_value = "0"
    },
    {
      name         = "baseSettings.grabLimit"
      number_value = "600"
    },
    {
      name         = "baseSettings.queryLimit"
      number_value = "5000"
    },
  ]
}

resource "prowlarr_indexer" "nzbgeek_info" {
  enable          = true
  name            = "NZBgeek"
  implementation  = "Newznab"
  config_contract = "NewznabSettings"
  protocol        = "usenet"
  priority        = 25
  app_profile_id  = 1
  fields = [
    {
      name       = "baseUrl"
      text_value = "https://api.nzbgeek.info"
    },
    {
      name       = "apiPath"
      text_value = "/api"
    },
    {
      name            = "apiKey"
      sensitive_value = "3EtxYMaDcPmOFfQ2O5PdHgkj39TzEx4p"
    },
    {
      name       = "vipExpiration"
      text_value = ""
    },
    {
      name         = "baseSettings.limitsUnit"
      number_value = "0"
    },
  ]
}

resource "prowlarr_indexer" "scenenzbs_com" {
  enable          = true
  name            = "SceneNZBs"
  implementation  = "Newznab"
  config_contract = "NewznabSettings"
  protocol        = "usenet"
  priority        = 25
  app_profile_id  = 1
  fields = [
    {
      name       = "baseUrl"
      text_value = "https://scenenzbs.com/"
    },
    {
      name       = "apiPath"
      text_value = "/api"
    },
    {
      name            = "apiKey"
      sensitive_value = "af0391ae0a2de3b1f44ca3b840c1c4c4"
    },
    {
      name       = "vipExpiration"
      text_value = "2027-01-18"
    },
    {
      name         = "baseSettings.limitsUnit"
      number_value = "0"
    },
    {
      name         = "baseSettings.grabLimit"
      number_value = "400"
    },
    {
      name         = "baseSettings.queryLimit"
      number_value = "10000"
    },
  ]
}

resource "prowlarr_indexer" "usenet-crawler_com" {
  enable          = true
  name            = "usenet-crawler"
  implementation  = "Newznab"
  config_contract = "NewznabSettings"
  protocol        = "usenet"
  priority        = 25
  app_profile_id  = 1
  fields = [
    {
      name       = "baseUrl"
      text_value = "https://www.usenet-crawler.com/"
    },
    {
      name       = "apiPath"
      text_value = "/api"
    },
    {
      name            = "apiKey"
      sensitive_value = "8a0b88364a0d3ba2a8334b2d3b7acf5c"
    },
    {
      name       = "vipExpiration"
      text_value = ""
    },
    {
      name         = "baseSettings.limitsUnit"
      number_value = "0"
    },
    {
      name         = "baseSettings.grabLimit"
      number_value = "1000"
    },
    {
      name         = "baseSettings.queryLimit"
      number_value = "10000"
    },
  ]
}

# ---------------------------------------------------------------------------------------------------------------------
# APPLICATIONS
# ---------------------------------------------------------------------------------------------------------------------

resource "prowlarr_application_lazy_librarian" "lazylibrarian" {
  name = "lazylibrarian.laura.services"
  sync_level = "fullSync"
  base_url = "https://lazylibrarian-princessdomino.venom.mygiga.cloud"
  prowlarr_url = "https://prowlarr-princessdomino.venom.mygiga.cloud"
  api_key = var.lazylibrarian_credentials.apiKey
}

resource "prowlarr_application_lidarr" "lidarr" {
  name         = "lidarr.laura.services"
  sync_level   = "fullSync"
  base_url     = "https://lidarr-princessdomino.venom.mygiga.cloud"
  prowlarr_url = "https://prowlarr-princessdomino.venom.mygiga.cloud"
  api_key      = var.lidarr_credentials.apiKey
}

resource "prowlarr_application_radarr" "radarr" {
  name         = "radarr.laura.services"
  sync_level   = "fullSync"
  base_url     = "https://radarr-princessdomino.venom.mygiga.cloud"
  prowlarr_url = "https://prowlarr-princessdomino.venom.mygiga.cloud"
  api_key      = var.radarr_credentials.apiKey
}

resource "prowlarr_application_sonarr" "sonarr" {
  name         = "sonarr.laura.services"
  sync_level   = "fullSync"
  base_url     = "https://sonarr4-princessdomino.venom.mygiga.cloud"
  prowlarr_url = "https://prowlarr-princessdomino.venom.mygiga.cloud"
  api_key      = var.sonarr_credentials.apiKey
}

resource "lidarr_download_client_sabnzbd" "lidarr" {
  enable                     = true
  priority                   = 1
  name                       = "SABnzbd"
  host                       = replace(var.sabnzbd_credentials.url, "/^([a-z][a-z0-9+\\-.]*):///", "")
  url_base                   = "/"
  port                       = 443
  use_ssl                    = true
  api_key                    = var.sabnzbd_credentials.apiKey
  remove_failed_downloads    = true
  remove_completed_downloads = true
}

resource "radarr_download_client_sabnzbd" "radarr" {
  enable                     = true
  priority                   = 1
  name                       = "SABnzbd"
  host                       = replace(var.sabnzbd_credentials.url, "/^([a-z][a-z0-9+\\-.]*):///", "")
  url_base                   = "/"
  port                       = 443
  use_ssl                    = true
  api_key                    = var.sabnzbd_credentials.apiKey
  remove_failed_downloads    = true
  remove_completed_downloads = true
}

resource "sonarr_download_client_sabnzbd" "sonarr" {
  enable                     = true
  priority                   = 1
  name                       = "SABnzbd"
  host                       = replace(var.sabnzbd_credentials.url, "/^([a-z][a-z0-9+\\-.]*):///", "")
  url_base                   = "/"
  port                       = 443
  use_ssl                    = true
  api_key                    = var.sabnzbd_credentials.apiKey
  remove_failed_downloads    = true
  remove_completed_downloads = true
}

resource "lidarr_download_client_rtorrent" "lidarr" {
  enable   = true
  priority = 1
  name     = "rTorrent"
  host     = replace(var.rtorrent_credentials.url, "/^([a-z][a-z0-9+\\-.]*):///", "")
  url_base = var.rtorrent_credentials.path
  port     = 443
  use_ssl  = true
  username = var.rtorrent_credentials.username
  password = var.rtorrent_credentials.password
}

resource "radarr_download_client_rtorrent" "radarr" {
  enable   = true
  priority = 1
  name     = "rTorrent"
  host     = replace(var.rtorrent_credentials.url, "/^([a-z][a-z0-9+\\-.]*):///", "")
  url_base = var.rtorrent_credentials.path
  port     = 443
  use_ssl  = true
  username = var.rtorrent_credentials.username
  password = var.rtorrent_credentials.password
}

resource "sonarr_download_client_rtorrent" "sonarr" {
  enable   = true
  priority = 1
  name     = "rTorrent"
  host     = replace(var.rtorrent_credentials.url, "/^([a-z][a-z0-9+\\-.]*):///", "")
  url_base = var.rtorrent_credentials.path
  port     = 443
  use_ssl  = true
  username = var.rtorrent_credentials.username
  password = var.rtorrent_credentials.password
}

# ---------------------------------------------------------------------------------------------------------------------
# METADATA
# ---------------------------------------------------------------------------------------------------------------------

resource "sonarr_metadata" "plex" {
  enable          = true
  name            = "Plex"
  implementation  = "PlexMetadata"
  config_contract = "PlexMetadataSettings"
  tags            = []
}

# ---------------------------------------------------------------------------------------------------------------------
# MEDIA MANAGEMENT
# ---------------------------------------------------------------------------------------------------------------------

resource "lidarr_media_management" "settings" {
  unmonitor_previous_tracks = false
  hardlinks_copy            = true
  create_empty_folders      = true
  delete_empty_folders      = true
  watch_library_for_changes = true
  import_extra_files        = true
  set_permissions           = true
  skip_free_space_check     = false
  minimum_free_space        = 100
  recycle_bin_days          = 7
  chmod_folder              = "755"
  chown_group               = ""
  download_propers_repacks  = "preferAndUpgrade"
  allow_fingerprinting      = "never"
  extra_file_extensions     = "info"
  file_date                 = "none"
  recycle_bin_path          = ""
  rescan_after_refresh      = "always"
}

resource "radarr_media_management" "settings" {
  auto_rename_folders                         = true
  auto_unmonitor_previously_downloaded_movies = false
  copy_using_hardlinks                        = true
  create_empty_movie_folders                  = true
  delete_empty_folders                        = true
  enable_media_info                           = true
  import_extra_files                          = true
  set_permissions_linux                       = false
  skip_free_space_check_when_importing        = false
  minimum_free_space_when_importing           = 100
  recycle_bin_cleanup_days                    = 7
  chmod_folder                                = "755"
  chown_group                                 = ""
  download_propers_and_repacks                = "doNotPrefer"
  extra_file_extensions                       = "srt,info"
  file_date                                   = "none"
  recycle_bin                                 = ""
  rescan_after_refresh                        = "always"
  paths_default_static                        = false
}

resource "sonarr_media_management" "settings" {
  unmonitor_previous_episodes = false
  hardlinks_copy              = true
  create_empty_folders        = true
  delete_empty_folders        = true
  enable_media_info           = true
  import_extra_files          = true
  set_permissions             = false
  skip_free_space_check       = false
  minimum_free_space          = 100
  recycle_bin_days            = 7
  chmod_folder                = "755"
  chown_group                 = ""
  download_propers_repacks    = "doNotPrefer"
  episode_title_required      = "always"
  extra_file_extensions       = "srt,info"
  file_date                   = "none"
  recycle_bin_path            = ""
  rescan_after_refresh        = "always"
}

# ---------------------------------------------------------------------------------------------------------------------
# PROFILES
# ---------------------------------------------------------------------------------------------------------------------

resource "lidarr_metadata_profile" "extended" {
  name                  = "Extended"
  primary_album_types   = [0, 1, 2]
  secondary_album_types = [0, 2]
  release_statuses      = [0]
}

resource "radarr_quality_definition" "bluray_1080p" {
  id             = 22
  title          = "Bluray-1080p"
  min_size       = 48.4
  preferred_size = 1999
  max_size       = 2000
}

resource "sonarr_quality_definition" "bluray_1080p" {
  id             = 16
  title          = "Bluray-1080p"
  min_size       = 48.4
  preferred_size = 995
  max_size       = 1000
}

# ---------------------------------------------------------------------------------------------------------------------
# ROOT FOLDERS
# ---------------------------------------------------------------------------------------------------------------------

resource "lidarr_root_folder" "music" {
  name                    = "Music"
  quality_profile_id      = 3
  metadata_profile_id     = 1
  monitor_option          = "future"
  new_item_monitor_option = "all"
  path                    = "/storage/media/Music"
  tags                    = [1]
}

resource "radarr_root_folder" "movies" {
  path = "/storage/media/Movies"
}

resource "radarr_root_folder" "movies_anime" {
  path = "/storage/media/Movies (Anime)"
}

resource "sonarr_root_folder" "series" {
  path = "/storage/media/TV Shows"
}

resource "sonarr_root_folder" "series_anime" {
  path = "/storage/media/TV Shows (Anime)"
}

# ---------------------------------------------------------------------------------------------------------------------
# NOTIFICATIONS
# ---------------------------------------------------------------------------------------------------------------------

resource "radarr_notification_plex" "radarr" {
  on_download                      = true
  on_upgrade                       = true
  on_rename                        = true
  on_movie_added                   = true
  on_movie_delete                  = true
  on_movie_file_delete             = true
  on_movie_file_delete_for_upgrade = true

  include_health_warnings = false
  name                    = "Plex Media Server"

  host       = "plex-princessdomino"
  port       = 32400
  auth_token = "JMsxCCwG_jHj2ahuyQxV"
}

resource "sonarr_notification_plex" "sonarr" {
  on_download                        = true
  on_upgrade                         = true
  on_rename                          = true
  on_series_add                      = true
  on_series_delete                   = true
  on_episode_file_delete             = true
  on_episode_file_delete_for_upgrade = true

  include_health_warnings = false
  name                    = "Plex Media Server"

  host       = "plex-princessdomino"
  port       = 32400
  auth_token = "JMsxCCwG_jHj2ahuyQxV"
}

resource "radarr_notification_discord" "radarr_incoming_upgrade" {
  on_grab                          = false
  on_download                      = true
  on_upgrade                       = true
  on_rename                        = false
  on_movie_delete                  = false
  on_movie_file_delete             = false
  on_movie_file_delete_for_upgrade = false
  on_health_issue                  = false
  on_application_update            = false

  include_health_warnings = false
  name                    = "Discord (Incoming & Upgrades)"

  web_hook_url  = "https://discord.com/api/webhooks/1346139699005227019/CZBLY28-lliBwHkLtwZ4ESpH7LSsM1HqM1Wm2N160lETtW-r-V5ZAvDYKVpTjh5an-vL"
  username      = "butler"
  author        = "Filme"
  avatar        = "https://radarr.video/img/logo.png"
  grab_fields   = [0, 1, 2, 3, 5, 6, 8, 9]
  import_fields = [0, 1, 2, 3, 4, 6, 7, 8, 9, 11, 12]
}

resource "sonarr_notification_discord" "sonarr_incoming_upgrade" {
  on_grab                            = false
  on_download                        = true
  on_upgrade                         = true
  on_rename                          = false
  on_series_delete                   = false
  on_episode_file_delete             = false
  on_episode_file_delete_for_upgrade = false
  on_health_issue                    = false
  on_application_update              = false

  include_health_warnings = false
  name                    = "Discord (Incoming & Upgrades)"

  web_hook_url  = "https://discord.com/api/webhooks/1346141423644446842/Gxd-LK1sH5P_-EhYiY4oYw35af9s3thHPDnKcq4OLUOVsNlCdKhfTtIevVXa5IDz4GN4"
  username      = "butler"
  author        = "Serien"
  avatar        = "https://sonarr.tv/img/logo.png"
  grab_fields   = [0, 1, 2, 3, 5, 6, 8, 9]
  import_fields = [0, 1, 2, 3, 4, 6, 7, 8, 9, 11, 12]
}
