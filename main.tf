provider "google" {
  project     = var.gcp_project
  region      = var.gcp_region
  zone        = var.gcp_zone
  credentials = var.gcp_auth_file
}

resource "google_storage_bucket" "tf-bucket" {
  project       = var.gcp_project
  location      = var.gcp_region
  force_destroy = true
  name          = var.bucket_name
  storage_class = var.storage_class

  versioning {
    enabled = true
  }
}

resource "google_compute_instance" "default" {
  name         = var.gcp_instancename
  machine_type = var.gcp_machinetype

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }
  network_interface {
    network = "default"

    access_config {

    }
  }


}
