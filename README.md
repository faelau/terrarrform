# terrarrform

## `recyclarr`

```
radarr:
  radarr_main:
    base_url: https://radarr.laura.services
    api_key: 9fa54d4701ec401e82a2aa8abdb0a7d8

    include:
      - template: radarr-quality-definition-movie
      - template: radarr-custom-formats-hd-bluray-web-german
      - template: radarr-quality-profile-hd-bluray-web-german
      - template: radarr-custom-formats-hd-bluray-web
      - template: radarr-quality-profile-hd-bluray-web
      - template: radarr-quality-profile-anime
      - template: radarr-custom-formats-anime

    quality_profiles:
      - name: HD Bluray + WEB (GER)
      - name: Remux-1080p - Anime
        min_format_score: 0

    custom_formats:
      - trash_ids:
          - f845be10da4f442654c13e1f2c3d6cd5
        assign_scores_to:
          - name: Remux-1080p - Anime
            score: 1500
      - trash_ids:
          - 820b09bb9acbfde9c35c71e0e565dad8
        assign_scores_to:
          - name: HD Bluray + WEB (GER)
            score: 70
      - trash_ids:
          - d6e9318c875905d6cfb5bee961afcea9
        assign_scores_to:
          - name: HD Bluray + WEB

sonarr:
  sonarr_main:
    base_url: https://sonarr.laura.services
    api_key: LHRBpDA3SkcDCV9KTsSfy8jMffRGaVXo

    include:
      - template: sonarr-quality-definition-series
      - template: sonarr-v4-custom-formats-hd-bluray-web-german
      - template: sonarr-v4-quality-profile-hd-bluray-web-german
      - template: sonarr-v4-custom-formats-web-1080p
      - template: sonarr-v4-quality-profile-web-1080p-alternative
      - template: sonarr-quality-definition-anime
      - template: sonarr-v4-quality-profile-anime
      - template: sonarr-v4-custom-formats-anime

    quality_profiles:
      - name: HD Bluray + WEB (GER)
      - name: Remux-1080p - Anime
        min_format_score: 0

    custom_formats:
      - trash_ids:
          - ed51973a811f51985f14e2f6f290e47a
        assign_scores_to:
          - name: Remux-1080p - Anime
            score: 1500
      - trash_ids:
          - 290078c8b266272a5cc8e251b5e2eb0b
        assign_scores_to:
          - name: HD Bluray + WEB (GER)
            score: 70
      - trash_ids:
          - ae575f95ab639ba5d15f663bf019e3e8
        assign_scores_to:
          - name: WEB-1080p
```

## lazylibrarian

```
[GENERAL]
homepage = Authors
auth_type = FORM
config_tab_num = 5
imp_preflang = German, de, de-DE, deu
ebook_dir = /storage/media/Books
audio_dir = /storage/media/Books
download_dir = /storage/downloads/lazylibrarian

[WEBSERVER]
http_user = princessdomino
http_pass = oiFbgU-GJYwCP2V

[LOGGING]
logdir = /config/Logs

[TELEMETRY]
server_id = 9ee1aa3a1ac343b6917e0c50b7df1512

[GIT]
install_type = source DOCKER
current_version = 58460d1ab3c51661e38c80d6683f1c162976692f
latest_version = UNKNOWN INSTALL
commits_behind = -1

[SABNZBD]
sab_host = https://sabnzbd.laura.services
sab_port = 443
sab_api = Nn34sHOH7kPMkvdx3h2ciy6KhHR11gZK
sab_cat = books

[USENET]
nzb_downloader_sabnzbd = True

[TORRENT]
tor_downloader_rtorrent = True
prefer_magnet = False

[RTORRENT]
rtorrent_host = https://rtorrent-princessdomino.venom.mygiga.cloud/rt/plugins/httprpc/action.php
rtorrent_user = princessdomino
rtorrent_pass = oiFbgU-GJYwCP2V
rtorrent_label = lazylibrarian

[POSTPROCESS]
audiobook_dest_folder = $Author/$Title
del_completed = False

[PROWL]
prowl_priority = -2

[API]
book_api = HardCover
hc_api = Bearer eyJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJIYXJkY292ZXIiLCJ2ZXJzaW9uIjoiOCIsImp0aSI6ImViMDRhMjBjLWRkMTYtNDQ1OC1iNWI5LWUzMmQ1MjhlYTY3YyIsImFwcGxpY2F0aW9uSWQiOjIsInN1YiI6IjI0MDgwIiwiYXVkIjoiMSIsImlkIjoiMjQwODAiLCJsb2dnZWRJbiI6dHJ1ZSwiaWF0IjoxNzQyNTc3MjY4LCJleHAiOjE3NzQxMTMyNjgsImh0dHBzOi8vaGFzdXJhLmlvL2p3dC9jbGFpbXMiOnsieC1oYXN1cmEtYWxsb3dlZC1yb2xlcyI6WyJ1c2VyIl0sIngtaGFzdXJhLWRlZmF1bHQtcm9sZSI6InVzZXIiLCJ4LWhhc3VyYS1yb2xlIjoidXNlciIsIlgtaGFzdXJhLXVzZXItaWQiOiIyNDA4MCJ9LCJ1c2VyIjp7ImlkIjoyNDA4MH19.DrYRQ4iyYshY5QjUL-ABepOjJbijw96sIi49XdCbFpY
```