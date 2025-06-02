resource "google_compute_instance" "iowa1-vm" {
  name         = "iowa1-vm"
  machine_type = "n2-standard-2"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }
    
  network_interface {
    subnetwork = google_compute_subnetwork.iowa.name
    access_config {
      // Ephemeral public IP
    }
  }
  
  metadata_startup_script = file("./startup.sh")
}


resource "google_compute_instance" "hongkong1-vm" {
  name         = "hongkong1-vm"
  machine_type = "n2-standard-2"
  zone         = "asia-east2-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }
    
  network_interface {
    subnetwork = google_compute_subnetwork.hongkong.name
    access_config {
      // Ephemeral public IP
    }
  }
  metadata_startup_script = file("./startup.sh")
}

resource "google_compute_instance" "frankfurt1-vm" {
  name         = "frankfurt1-vm"
  machine_type = "n2-standard-2"
  zone         = "europe-west3-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }
    
  network_interface {
    subnetwork = google_compute_subnetwork.frankfurt.name
    access_config {
      // Ephemeral public IP
    }
  }
  metadata_startup_script = file("./startup.sh")
}