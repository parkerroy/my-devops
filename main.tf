variable "gcp-key" {}


provider "google" { 
  project = "parker-roy7"
  region = "us-central1"
  zone = "us-central1-a"

  credentials = file(var.gcp-key)
}

resource "google_compute_instance" "terraform2" {
  name = "terraform3"
  machine_type = "e2-medium"
  zone = "us-central1-a"

  boot_disk {
     initialize_params {
       image = "debian-cloud/debian-9"
    }
  }
  
  network_interface {
    network = "default"
  }

}  
