provider "google" {
  project = var.gcp_project
  region  = var.gcp_region
  zone    = var.gcp_zone
 credentials = var.gcp_auth_file
}

resource "google_compute_instance" "default" {
  name= var.gcp_instancename
  machine_type= var.gcp_machinetype

  boot_disk {
      initialize_params{
          image="debian-cloud/debian-9"
      }
  }
network_interface {
    network="default"

    access_config{

    }
}


}
