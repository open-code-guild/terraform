resource "cloudflare_zone" "opencodeguild-dot-com" {
  zone = "opencodeguild.com"
}

resource "cloudflare_record" "_github-pages-challenge-open-code-guild-opencodeguild-dot-com" {
  zone_id = cloudflare_zone.opencodeguild-dot-com.id
  name    = "_github-pages-challenge-open-code-guild"
  type    = "TXT"
  value   = "1e0b31b5a3100f9aaa28284c2e46f6"
}

resource "cloudflare_record" "opencodeguild-dot-com-google-domains-email-forwarding-5" {
  zone_id  = cloudflare_zone.opencodeguild-dot-com.id
  name     = "@"
  type     = "MX"
  priority = "5"
  value    = "aspmx.l.google.com"
}

resource "cloudflare_record" "opencodeguild-dot-com-google-domains-email-forwarding-10" {
  zone_id  = cloudflare_zone.opencodeguild-dot-com.id
  name     = "@"
  type     = "MX"
  priority = "10"
  value    = "alt1.gmr-smtp-in.l.google.com"
}

resource "cloudflare_record" "opencodeguild-dot-com-google-domains-email-forwarding-20" {
  zone_id  = cloudflare_zone.opencodeguild-dot-com.id
  name     = "@"
  type     = "MX"
  priority = "20"
  value    = "alt2.gmr-smtp-in.l.google.com"
}

resource "cloudflare_record" "opencodeguild-dot-com-google-domains-email-forwarding-30" {
  zone_id  = cloudflare_zone.opencodeguild-dot-com.id
  name     = "@"
  type     = "MX"
  priority = "30"
  value    = "alt3.gmr-smtp-in.l.google.com"
}

resource "cloudflare_record" "opencodeguild-dot-com-google-domains-email-forwarding-40" {
  zone_id  = cloudflare_zone.opencodeguild-dot-com.id
  name     = "@"
  type     = "MX"
  priority = "40"
  value    = "alt4.gmr-smtp-in.l.google.com"
}
