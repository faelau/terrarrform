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
          - ae575f95ab639ba5d15f663bf019e3e8
        assign_scores_to:
          - name: WEB-1080p
```