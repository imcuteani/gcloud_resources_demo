# GKE node pool configuration 

resource "google_service_account" "default" {
    account_id = var.service_account_id
    display_name = var.service_display_name
}

resource "google_container_cluster" "primary" {
    name = var.google_container_cluster
    location = var.node_pool_cluster_location
    remove_default_node_pool = true
    initial_node_count = 1
  
}
resource "google_container_node_pool" "primary_preemptible_nodes" {
    name = var.google_container_node_pool_name
    cluster = google_container_cluster.primary.id
    node_count = 1

    node_config {
      preemptible = true
      machine_type = "e2-medium"
      service_account = google_service_account.default.email
      oauth_scopes = [
          "https://www.googleapis.com/auth/cloud-platform"
      ]
    }
  
}
