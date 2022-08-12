# Define Terraform provider
terraform {
  required_version = "~> 1.2.5"

  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.31.0" # pinning version
    }
  }
}

provider "google" {
  credentials = file(var.credentials_file)
  project     = var.project_name
  zone        = var.zone_free_south_carolina
}

# Create a single Compute Engine instance
resource "google_compute_instance" "default" {
  name         = var.instance_name
  machine_type = var.machine_type_free
  zone         = var.zone_free_south_carolina

  metadata = {
    ssh-keys   = "${var.sshuser}:${var.sshpub}"
  }

  boot_disk {
    auto_delete = true
    initialize_params {
      image = var.ubuntu_min_2204
      size  = var.disk_size_free
      type  = var.disk_type_free
    }
  }

  # Install Swap Space
  metadata_startup_script = file("swapfile.sh")

  network_interface {
    network = "default"

    access_config {
      # Include this section to give the VM an external IP address
    }
  }
}
