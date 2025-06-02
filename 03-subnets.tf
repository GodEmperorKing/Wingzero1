# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_subnetwork
resource "google_compute_subnetwork" "iowa" {
  name                     = "anewhope"
  ip_cidr_range            = "10.30.60.0/24"
  region                   = "us-central1"
  network                  = google_compute_network.main.id
  private_ip_google_access = true
}

# Regional Proxy-Only Subnet 
# Required for Regional Application Load Balancer for traffic offloading
resource "google_compute_subnetwork" "regional_proxy_subnet" {
  name          = "regional-proxy-subnet"
  region        = "us-central1"

  ip_cidr_range = "10.30.70.0/24"
  # This purpose reserves this subnet for regional Envoy-based load balancers
  purpose       = "REGIONAL_MANAGED_PROXY"
  network       = google_compute_network.main.id
  role          = "ACTIVE"
}

# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_subnetwork
resource "google_compute_subnetwork" "frankfurt" {
  name                     = "empirestrikesback"
  ip_cidr_range            = "10.30.90.0/24"
  region                   = "europe-west3"
  network                  = google_compute_network.main.id
  private_ip_google_access = true
}


# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_subnetwork
resource "google_compute_subnetwork" "hongkong" {
  name                     = "returnofthejedi"
  ip_cidr_range            = "10.30.120.0/24"
  region                   = "asia-east2"
  network                  = google_compute_network.main.id
  private_ip_google_access = true
}

# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_subnetwork
resource "google_compute_subnetwork" "belgium" {
  name                     = "phantommenace"
  ip_cidr_range            = "10.30.150.0/24"
  region                   = "europe-west1"
  network                  = google_compute_network.main.id
  private_ip_google_access = true
}