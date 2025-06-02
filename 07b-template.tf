# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_region_instance_template
# https://developer.hashicorp.com/terraform/language/functions/file
# Google Compute Engine: Regional Instance Template
resource "google_compute_region_instance_template" "iowa1-app01" {
  name         = "iowa1-app01-template-terraform"
  region       = "us-central1"
  description  = "This template is used to clone lizzo"
  machine_type = "e2-medium"

  # Create a new disk from an image and set as default boot disk
  disk {
    source_image = "debian-cloud/debian-12"
    boot         = true
  }

  # Network configurations  
  network_interface {
    subnetwork = google_compute_subnetwork.iowa.id
    /*access_config {
      # Include this section to give the VM an external IP address
    } */
  }

# Use file() to get shell script for startup script argument
  metadata_startup_script = file("./startup.sh")
}


resource "google_compute_region_instance_template" "hongkong1-app02" {
  name         = "hongkong1-app02-template-terraform"
  region       = "asia-east2"
  description  = "This template is used to clone lizzo"
  machine_type = "e2-medium"

  # Create a new disk from an image and set as default boot disk
  disk {
    source_image = "debian-cloud/debian-12"
    boot         = true
  }

  # Network configurations  
  network_interface {
    subnetwork = google_compute_subnetwork.hongkong.id
    /*access_config {
      # Include this section to give the VM an external IP address
    } */
  }

# Use file() to get shell script for startup script argument
  metadata_startup_script = file("./startup.sh")
}

resource "google_compute_region_instance_template" "frankfurt1-app03" {
  name         = "frankfurt1-app03-template-terraform"
  region       = "europe-west3"
  description  = "This template is used to clone lizzo"
  machine_type = "e2-medium"

  # Create a new disk from an image and set as default boot disk
  disk {
    source_image = "debian-cloud/debian-12"
    boot         = true
  }

  # Network configurations  
  network_interface {
    subnetwork = google_compute_subnetwork.frankfurt.id
    /*access_config {
      # Include this section to give the VM an external IP address
    } */
  }

# Use file() to get shell script for startup script argument
  metadata_startup_script = file("./startup.sh")
}

resource "google_compute_region_instance_template" "belgium1-app04" {
  name         = "belgium1-app04-template-terraform"
  region       = "europe-west1"
  description  = "This template is used to clone lizzo"
  machine_type = "e2-medium"

  # Create a new disk from an image and set as default boot disk
  disk {
    source_image = "debian-cloud/debian-12"
    boot         = true
  }

  # Network configurations  
  network_interface {
    subnetwork = google_compute_subnetwork.belgium.id
    /*access_config {
      # Include this section to give the VM an external IP address
    } */
  }

# Use file() to get shell script for startup script argument
  metadata_startup_script = file("./startup.sh")
}