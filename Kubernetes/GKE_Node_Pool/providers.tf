provider "google" {
  project = var.project
  region  = var.region
  zone    = var.zone
  credentials = var.gcp_credentials
}

terraform {
  cloud {
    organization = "Woodgroove"

    workspaces {
      name = "gcp_github_actions"
    }
  }
}