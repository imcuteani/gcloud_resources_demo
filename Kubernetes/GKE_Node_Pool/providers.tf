provider "google" {
  project = var.project
  region  = var.region
}

terraform {
  cloud {
    organization = "Woodgroove"

    workspaces {
      name = "gcp_github_actions"
    }
  }
}