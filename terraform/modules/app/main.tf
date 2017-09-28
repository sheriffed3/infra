resource "google_compute_instance" "app" {
  name         = "${var.app_name}"
  machine_type = "${var.app_machine_type}"
  zone         = "${var.app_zone}"
  tags         = ["${var.app_tags}"]

  boot_disk {
    initialize_params {
      image = "${var.app_disk_image}"
    }
  }

  network_interface {
    network = "default"

    access_config = {
      nat_ip = "${google_compute_address.app_ip.address}"
    }
  }

  metadata {
    sshKeys = "appuser:${file(var.public_key_path)}"
  }
}

resource "google_compute_address" "app_ip" {
  name = "reddit-app-ip"
}

resource "google_compute_firewall" "firewall_puma" {
  name        = "allow-puma-default"
  network     = "default"
  description = "All to the Puma"

  allow {
    protocol = "tcp"
    ports    = ["9292"]
  }

  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["reddit-app"]
}

resource "google_compute_firewall" "firewall_puma_http" {
  name        = "allow-http-puma-default"
  network     = "default"
  description = "All to the Puma http"

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["reddit-app"]
}
