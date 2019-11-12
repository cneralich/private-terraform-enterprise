resource "google_storage_bucket" "tfe-bucket" {
  name     = "${var.name}-storage-bucket"
  location = "us"
}
