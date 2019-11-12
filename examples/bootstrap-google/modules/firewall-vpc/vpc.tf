resource "google_compute_network" "ptfe_vpc" {
  name                    = "${var.name}-vpc"
  description             = "PTFE VPC Network"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "ptfe_subnet" {
  name          = "${var.name}-subnet"
  ip_cidr_range = "${var.subnet_range}"
  region        = "${var.region}"
  network       = "${google_compute_network.ptfe_vpc.self_link}"
}
