resource "cloudflare_zone" "opencodeguild-dot-com" {
  zone = "opencodeguild.com"
}

resource "cloudflare_record" "_github-pages-challenge-open-code-guild-opencodeguild-dot-com" {
  zone_id = cloudflare_zone.opencodeguild-dot-com.id
  name    = "_github-pages-challenge-open-code-guild"
  type    = "TXT"
  value   = "1e0b31b5a3100f9aaa28284c2e46f6"
}
