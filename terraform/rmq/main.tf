provider "google" { 
  project = var.project-id
  region = "us-central1"
  zone = "us-central1-a"

  credentials = file(var.gcp-key)
}

resource "google_compute_instance" "rmq" {
  name = "rmq"
  machine_type = "e2-medium"
  zone = "us-central1-a"

  boot_disk {
     initialize_params {
       image = "centos-cloud/centos-7"
  
  network_interface {
    network = "default"
  }

}  

