# https://registry.terraform.io/providers/hashicorp/google/latest/docs
provider "google" {
  project     = "project-id"
  region      = "us-central1"
  credentials = "project-json-key"
}