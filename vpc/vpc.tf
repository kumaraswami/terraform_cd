locals {
	vpc_name=""
	project_name=""

}

resource "google_compute_network" "vpc_network" {
  project                 = local.project_name
  name                    = local.vpc_name
  auto_create_subnetworks = true
  mtu                     = 1460
}