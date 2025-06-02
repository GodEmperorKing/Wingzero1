# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router
resource "google_compute_router" "iowarouter" {
  name    = "iowarouter"
  region  = "us-central1"
  network = google_compute_network.main.id
}


# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router
resource "google_compute_router" "frankfurtrouter" {
  name    = "frankfurtrouter"
  region  = "europe-west3"
  network = google_compute_network.main.id
}


# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router
resource "google_compute_router" "hongkongrouter" {
  name    = "hongkongrouter"
  region  = "asia-east2"
  network = google_compute_network.main.id
}


# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router
resource "google_compute_router" "belgiumrouter" {
  name    = "belgiumrouter"
  region  = "europe-west1"
  network = google_compute_network.main.id
}