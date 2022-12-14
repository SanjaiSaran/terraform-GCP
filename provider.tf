terraform {
  required_version = ">= 0.12"
}

provider "google" {
  project = var.app_project
  credentials = file(var.gcp_auth_file)
  region  = var.gcp_region_1
  zone    = var.gcp_zone_1
}


resource "random_id" "instance_id" {
 byte_length = 4
}

# Create VM #1
resource "google_compute_instance" "vm_instance" {
  name         = "${var.app_name}-${var.app_environment}-vm-1"
  machine_type = "e2-medium"
  zone         = var.gcp_zone_1
  hostname     = "${var.app_name}-vm-${random_id.instance_id.hex}.${var.app_domain}"
  tags         = ["ssh","http"]

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-1804-lts"
    }
  }

  metadata_startup_script = "sudo apt-get update"

   network_interface {
    network       = google_compute_network.vpc.name
    subnetwork    = google_compute_subnetwork.public_subnet_1.name
    access_config { }
  }
} 
#Create VM #2
resource "google_compute_instance" "vm_instance2" {
  name         = "${var.app_name}-${var.app_environment}-vm-2"
  machine_type = "e2-small"
  zone         = var.gcp_zone_1
  hostname     = "${var.app_name}-vm-${random_id.instance_id.hex}.${var.app_domain}"
  tags         = ["ssh","http"]

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-1804-lts"
      size = 500
    }
  }

  metadata_startup_script = "sudo apt-get update"

  network_interface {
    network       = google_compute_network.vpc.name
    subnetwork    = google_compute_subnetwork.public_subnet_1.name
    access_config { }
  }
} 

#Create VM #3
resource "google_compute_instance" "vm_instance3" {
  name         = "${var.app_name}-${var.app_environment}-vm-3"
  machine_type = "e2-medium"
  zone         = var.gcp_zone_1
  hostname     = "${var.app_name}-vm-${random_id.instance_id.hex}.${var.app_domain}"
  tags         = ["ssh","http"]

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-1804-lts"
    }
  }

  metadata_startup_script = "sudo apt-get update"

  network_interface {
    network       = google_compute_network.vpc.name
    subnetwork    = google_compute_subnetwork.public_subnet_1.name
    access_config { }
  }
} 

