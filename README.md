# terrarrform

## `crownpixie`

```
[GENERAL]
user_accounts = True
homepage = Authors
auth_type = FORM
match_ratio = 75
bookstrap_theme = superhero
config_tab_num = 5
imp_preflang = ger, de, de-DE
ebook_dir = /storage/media/Books
audio_dir = /storage/media/Books
download_dir = /storage
ebook_type = epub, mobi

[API]
api_enabled = True
api_key = 9ca4e9831ed7305516ffaf8ad7d53675
book_api = GoodReads

[WEBSERVER]
http_user = crownpixie
http_pass = ZcG7tXrdr8t8aLT

[LOGGING]
logdir = /config/Logs

[TELEMETRY]
server_id = 0862eb9850974d4da164b2ce86714bfc

[GIT]
install_type = source DOCKER
current_version = 58460d1ab3c51661e38c80d6683f1c162976692f
latest_version = UNKNOWN INSTALL
commits_behind = -1

[SABNZBD]
sab_host = https://sabnzbd-crownpixie.wolverine.mygiga.cloud
sab_port = 443
sab_api = WGyW1ZI6lBPK8uvh7RdXhmpIggb8Xpn0

[USENET]
nzb_downloader_sabnzbd = True

[LIBRARYSCAN]
no_future = True

[POSTPROCESS]
audiobook_dest_folder = $Author/$Title

[MAGAZINES]
reject_maxsize = 32

[PROWL]
prowl_priority = -2

[Newznab_0]
comiccat = 107000

[Newznab_1]
dispname = NZBgeek (Prowlarr)
enabled = True
host = https://prowlarr-princessdomino.venom.mygiga.cloud/13/api
api = c772cf2fa6fa465dbe4cb7528f2d61a5
generalsearch = search
bookcat = 107000
magcat = 107000
audiocat = 103000
comiccat = 107000
updated = 2025-03-30
dlpriority = 26

[Newznab_2]
dispname = SceneNZBs (Prowlarr)
enabled = True
host = https://prowlarr-princessdomino.venom.mygiga.cloud/14/api
api = c772cf2fa6fa465dbe4cb7528f2d61a5
generalsearch = search
bookcat = 107000
magcat = 107000
audiocat = 103000
comiccat = 107000
updated = 2025-03-30
dlpriority = 26

[Newznab_3]
dispname = usenet-crawler (Prowlarr)
enabled = True
host = https://prowlarr-princessdomino.venom.mygiga.cloud/15/api
api = c772cf2fa6fa465dbe4cb7528f2d61a5
generalsearch = search
bookcat = 107000
magcat = 107000
audiocat = 103000
comiccat = 107000
updated = 2025-03-30
dlpriority = 26

[Newznab_4]
dispname = Nzb.su (Prowlarr)
enabled = True
host = https://prowlarr-princessdomino.venom.mygiga.cloud/9/api
api = c772cf2fa6fa465dbe4cb7528f2d61a5
generalsearch = search
bookcat = 107000
magcat = 107000
comiccat = 107000
updated = 2025-03-30
dlpriority = 26

[GEN_0]
dispname = Genesis Library
enabled = True
host = libgen.is
search = search.php

[GEN_1]
dispname = Genesis Library (Mirror)
enabled = True
host = libgen.st
search = search.php
```

## `princessdomino`

### `recyclarr`

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