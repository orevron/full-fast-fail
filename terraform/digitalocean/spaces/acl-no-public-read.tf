# fails
# todo *2
# todo *2
# tfsec
# Resource 'digitalocean_spaces_bucket.fail' does not have versioning block specified
# Resource 'digitalocean_spaces_bucket.fail' has a publicly readable acl. *2

resource "digitalocean_spaces_bucket" "fail" {
  name   = "public_space"
  region = "nyc3"
  acl    = "public-read"
}

resource "digitalocean_spaces_bucket_object" "index" {
  region       = digitalocean_spaces_bucket.fail.region
  bucket       = digitalocean_spaces_bucket.fail.name
  key          = "index.html"
  content      = "<html><body><p>This page is empty.</p></body></html>"
  content_type = "text/html"
  acl          = "public-read"
}
