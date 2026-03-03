provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_project_service" "compute" {
  service            = "compute.googleapis.com"
  disable_on_destroy = false
}

resource "google_storage_bucket" "my_bucket" {
  name     = "${var.project_id}-tf-bucket"
  location = var.region

  uniform_bucket_level_access = true
}