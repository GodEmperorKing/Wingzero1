# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router_nat
resource "google_compute_router_nat" "iowanat" {
  name   = "iowanat"
  router = google_compute_router.iowarouter.name
  region = "us-central1"

  source_subnetwork_ip_ranges_to_nat = "LIST_OF_SUBNETWORKS"
  nat_ip_allocate_option             = "MANUAL_ONLY"

  subnetwork {
    name                    = google_compute_subnetwork.iowa.id
    source_ip_ranges_to_nat = ["ALL_IP_RANGES"]
  }

  nat_ips = [google_compute_address.iowanat.self_link]
}

# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_address
resource "google_compute_address" "iowanat" {
  name         = "iowanat"
  address_type = "EXTERNAL"
  network_tier = "PREMIUM"
  region = "us-central1"
}


# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router_nat
resource "google_compute_router_nat" "frankfurtnat" {
  name   = "frankfurtnat"
  router = google_compute_router.frankfurtrouter.name
  region = "europe-west3"

  source_subnetwork_ip_ranges_to_nat = "LIST_OF_SUBNETWORKS"
  nat_ip_allocate_option             = "MANUAL_ONLY"

  subnetwork {
    name                    = google_compute_subnetwork.frankfurt.id
    source_ip_ranges_to_nat = ["ALL_IP_RANGES"]
  }

  nat_ips = [google_compute_address.frankfurtnat.self_link]
}

# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_address
resource "google_compute_address" "frankfurtnat" {
  name         = "nat"
  address_type = "EXTERNAL"
  network_tier = "PREMIUM"
  region = "europe-west3"
}
