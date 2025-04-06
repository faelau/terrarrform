# ---------------------------------------------------------------------------------------------------------------------
# INDEXERS
# ---------------------------------------------------------------------------------------------------------------------

resource "prowlarr_indexer" "myanonamouse" {
  enable          = false
  name            = "MyAnonamouse"
  implementation  = "MyAnonamouse"
  config_contract = "MyAnonamouseSettings"
  protocol        = "torrent"
  priority        = 25
  app_profile_id  = 2
  fields = [
    {
      "name" : "baseUrl",
      "text_value" : "https://www.myanonamouse.net/",
    },
    {
      "name" : "searchInDescription",
      "bool_value" : false,
    },
    {
      "name" : "searchInFilenames",
      "bool_value" : false,
    },
    {
      "name" : "searchInSeries",
      "bool_value" : false,
    },
    {
      "name" : "torrentBaseSettings.preferMagnetUrl",
      "bool_value" : false,
    },
    {
      "name" : "baseSettings.grabLimit",
      "number_value" : 5,
    },
    {
      "name" : "baseSettings.limitsUnit",
      "number_value" : 0,
    },
    {
      "name" : "searchLanguages",
      "set_value" : [
        37
      ],
    },
    {
      "name" : "searchType",
      "number_value" : 0,
    },
    {
      "name" : "useFreeleechWedge",
      "number_value" : 0,
    },
    {
      "name" : "mamId",
      "text_value" : "FiEbJt6LutfeUu_-SraG2cL_pC5bWQT4x4CSxzQsRqyU-Hj3Fn0ImiDcXzKPNc_g9Lzp37qAOZA3B-drcD2c_LcvCsrhs8jEzjI1gF6ZyP6jw_QHNCrJvxKE7jecKLUf9RGNW3u8VrTEbrAB7S_ONlufWpEn5aJfQZm__atR_zY8Y2KVFtkA8BuiFT1j707a4-SAj4sv1Dzm9cATN6D28yREkH1c7JQvht6dbkUfiCZrzT3ImucdZQfJa5ywpOr0nE2Sat9SRgcDowOk7zETlvr3Xcvdr3mX3K_v"
    },
  ]
}

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

resource "prowlarr_application_lidarr" "lidarr" {
  name         = "lidarr.princessia.org"
  sync_level   = "fullSync"
  base_url     = "https://lidarr-crownpixie.wolverine.mygiga.cloud"
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

resource "prowlarr_application_readarr" "readarr" {
  name         = "readarr.laura.services"
  sync_level   = "fullSync"
  base_url     = "https://readarr-crownpixie.wolverine.mygiga.cloud"
  prowlarr_url = "https://prowlarr-princessdomino.venom.mygiga.cloud"
  api_key      = var.readarr_credentials.apiKey
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
  host                       = replace(var.sabnzbd_crownpixie_credentials.url, "/^([a-z][a-z0-9+\\-.]*):///", "")
  url_base                   = "/"
  port                       = 443
  use_ssl                    = true
  api_key                    = var.sabnzbd_crownpixie_credentials.apiKey
  remove_failed_downloads    = true
  remove_completed_downloads = true
}

resource "radarr_download_client_sabnzbd" "radarr" {
  enable                     = true
  priority                   = 1
  name                       = "SABnzbd"
  host                       = replace(var.sabnzbd_princessdomino_credentials.url, "/^([a-z][a-z0-9+\\-.]*):///", "")
  url_base                   = "/"
  port                       = 443
  use_ssl                    = true
  api_key                    = var.sabnzbd_princessdomino_credentials.apiKey
  remove_failed_downloads    = true
  remove_completed_downloads = true
}

resource "readarr_download_client_sabnzbd" "readarr" {
  enable                     = true
  priority                   = 1
  name                       = "SABnzbd"
  host                       = replace(var.sabnzbd_crownpixie_credentials.url, "/^([a-z][a-z0-9+\\-.]*):///", "")
  url_base                   = "/"
  port                       = 443
  use_ssl                    = true
  api_key                    = var.sabnzbd_crownpixie_credentials.apiKey
  remove_failed_downloads    = true
  remove_completed_downloads = true
  book_category              = "books"
}

resource "sonarr_download_client_sabnzbd" "sonarr" {
  enable                     = true
  priority                   = 1
  name                       = "SABnzbd"
  host                       = replace(var.sabnzbd_princessdomino_credentials.url, "/^([a-z][a-z0-9+\\-.]*):///", "")
  url_base                   = "/"
  port                       = 443
  use_ssl                    = true
  api_key                    = var.sabnzbd_princessdomino_credentials.apiKey
  remove_failed_downloads    = true
  remove_completed_downloads = true
}

resource "lidarr_download_client_rtorrent" "lidarr" {
  enable         = true
  priority       = 1
  name           = "rTorrent"
  host           = replace(var.rtorrent_crownpixie_credentials.url, "/^([a-z][a-z0-9+\\-.]*):///", "")
  url_base       = var.rtorrent_crownpixie_credentials.path
  port           = 443
  use_ssl        = true
  username       = var.rtorrent_crownpixie_credentials.username
  password       = var.rtorrent_crownpixie_credentials.password
  music_category = "lidarr"
}

resource "radarr_download_client_rtorrent" "radarr" {
  enable         = true
  priority       = 1
  name           = "rTorrent"
  host           = replace(var.rtorrent_princessdomino_credentials.url, "/^([a-z][a-z0-9+\\-.]*):///", "")
  url_base       = var.rtorrent_princessdomino_credentials.path
  port           = 443
  use_ssl        = true
  username       = var.rtorrent_princessdomino_credentials.username
  password       = var.rtorrent_princessdomino_credentials.password
  movie_category = "radarr"
}

resource "readarr_download_client_rtorrent" "readarr" {
  enable   = true
  priority = 1
  name     = "rTorrent"
  host     = replace(var.rtorrent_princessdomino_credentials.url, "/^([a-z][a-z0-9+\\-.]*):///", "")
  url_base = var.rtorrent_princessdomino_credentials.path
  port     = 443
  use_ssl  = true
  username = var.rtorrent_princessdomino_credentials.username
  password = var.rtorrent_princessdomino_credentials.password
}

resource "sonarr_download_client_rtorrent" "sonarr" {
  enable      = true
  priority    = 1
  name        = "rTorrent"
  host        = replace(var.rtorrent_princessdomino_credentials.url, "/^([a-z][a-z0-9+\\-.]*):///", "")
  url_base    = var.rtorrent_princessdomino_credentials.path
  port        = 443
  use_ssl     = true
  username    = var.rtorrent_princessdomino_credentials.username
  password    = var.rtorrent_princessdomino_credentials.password
  tv_category = "sonarr"
}

# ---------------------------------------------------------------------------------------------------------------------
# METADATA
# ---------------------------------------------------------------------------------------------------------------------

resource "lidarr_metadata_config" "settings" {
  write_audio_tags = "sync"
  scrub_audio_tags = true
}

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

resource "readarr_media_management" "settings" {
  unmonitor_previous_books    = false
  hardlinks_copy              = true
  create_empty_author_folders = true
  delete_empty_folders        = true
  watch_ibrary_for_changes    = true
  import_extra_files          = true
  set_permissions             = true
  skip_free_space_check       = false
  minimum_free_space          = 100
  recycle_bin_days            = 7
  chmod_folder                = "755"
  chown_group                 = ""
  download_propers_repacks    = "doNotPrefer"
  allow_fingerprinting        = "allFiles"
  extra_file_extensions       = "info"
  file_date                   = "bookReleaseDate"
  recycle_bin_path            = ""
  rescan_after_refresh        = "always"
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

resource "lidarr_naming" "settings" {
  rename_tracks              = true
  replace_illegal_characters = true
  standard_track_format      = "{Album Title} ({Release Year})/{Artist Name} - {Album Title} - {track:00} - {Track Title}"
  multi_disc_track_format    = "{Album Title} ({Release Year})/{Medium Format} {medium:00}/{Artist Name} - {Album Title} - {track:00} - {Track Title}"
  artist_folder_format       = "{Artist Name}"
}

# ---------------------------------------------------------------------------------------------------------------------
# PROFILES
# ---------------------------------------------------------------------------------------------------------------------

resource "lidarr_metadata_profile" "extended" {
  name                  = "Extended (Album / EP / Single)"
  primary_album_types   = [0, 1, 2]
  secondary_album_types = [0, 2]
  release_statuses      = [0]
}

resource "lidarr_metadata_profile" "restricted" {
  name                  = "Restricted (Album / EP)"
  primary_album_types   = [0, 1]
  secondary_album_types = [0, 2]
  release_statuses      = [0]
}

resource "lidarr_quality_profile" "high_quality" {
  name = "High Quality"
  quality_groups = [
    {
      id   = 1005
      name = "Lossless"
      qualities = [
        {
          id   = 6
          name = "FLAC"
        },
        {
          id   = 7
          name = "ALAC"
        },
        {
          id   = 35
          name = "APE"
        },
        {
          id   = 36
          name = "WavPack"
        },
        {
          id   = 21
          name = "FLAC 24bit"
        },
        {
          id   = 37
          name = "ALAC 24bit"
        },
      ]
    },
    {
      id   = 1004
      name = "High Quality Lossy"
      qualities = [
        {
          id   = 2
          name = "MP3-VBR-V0"
        },
        {
          id   = 12
          name = "AAC-VBR"
        },
        {
          id   = 4
          name = "MP3-320"
        },
        {
          id   = 15
          name = "OGG Vorbis Q9"
        },
        {
          id   = 11
          name = "AAC-320"
        },
        {
          id   = 14
          name = "OGG Vorbis Q10"
        },
      ]
    },
    {
      id   = 1003
      name = "Mid Quality Lossy"
      qualities = [
        {
          id   = 17
          name = "OGG Vorbis Q7"
        },
        {
          id   = 8
          name = "MP3-VBR-V2"
        },
        {
          id   = 3
          name = "MP3-256"
        },
        {
          id   = 16
          name = "OGG Vorbis Q8"
        },
        {
          id   = 10
          name = "AAC-256"
        },
      ]
    },
  ]
}

resource "radarr_quality_definition" "bluray_1080p" {
  id             = 22
  title          = "Bluray-1080p"
  min_size       = 48.4
  preferred_size = 1999
  max_size       = 2000
}

resource "readarr_metadata_profile" "standard" {
  name                  = "Standard"
  allowed_languages     = "deu"
  min_popularity        = 25
  min_pages             = 100
  skip_missing_date     = true
  skip_missing_isbn     = true
  skip_parts_and_sets   = true
  skip_series_secondary = false
  ignored               = ["Leseprobe"]
}

resource "readarr_naming" "settings" {
  rename_books               = true
  replace_illegal_characters = true
  colon_replacement_format   = 0
  author_folder_format       = "{Author Name}"
  standard_book_format       = "{Book Title}/{Author Name} - {Book Title}{ (PartNumber)}"
}

resource "readarr_quality_profile" "ebook" {
  name            = "eBook"
  upgrade_allowed = true
  cutoff          = 1100

  quality_groups = [
    {
      id   = 1100
      name = "Native"
      qualities = [
        {
          id   = 3
          name = "EPUB"
        },
        {
          id   = 2
          name = "MOBI"
        }
      ]
    }
  ]
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
  quality_profile_id      = lidarr_quality_profile.high_quality.id
  metadata_profile_id     = lidarr_metadata_profile.restricted.id
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

resource "readarr_root_folder" "books" {
  path                            = "/storage/media/Books"
  name                            = "Books"
  default_metadata_profile_id     = readarr_metadata_profile.standard.id
  default_quality_profile_id      = readarr_quality_profile.ebook.id
  default_monitor_option          = "all"
  default_monitor_new_item_option = "all"
  is_calibre_library              = false
  # keep "default" if not used
  output_profile = "default"
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

resource "lidarr_notification_discord" "lidarr_incoming_upgrade" {
  on_grab               = false
  on_import_failure     = false
  on_upgrade            = true
  on_rename             = false
  on_download_failure   = false
  on_track_retag        = false
  on_release_import     = true
  on_health_issue       = false
  on_application_update = false

  include_health_warnings = false
  name                    = "Discord (Incoming & Upgrades)"

  web_hook_url  = "https://discord.com/api/webhooks/1358158464479924344/9SIijdEWwYJaU0JRFGNKmviJR7Vx-D1-K6VPH9M0Qns0-Cfg79fVLvR-ojPGAJlRrtxh"
  username      = "butler"
  author        = "Musik"
  avatar        = "https://avatars.githubusercontent.com/u/28475832?v=4"
  grab_fields   = [0, 1, 2, 3, 5, 6, 8, 9]
  import_fields = [0, 1, 2, 3, 5, 6, 8, 9]
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
