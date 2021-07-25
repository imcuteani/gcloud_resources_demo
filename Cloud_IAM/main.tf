# Resource block for Gcloud IAM configurations

resource "google_iam_workload_identity_pool" "iam_identity_pool" {
  provider = google-beta
  workload_identity_pool_id = var.identity_pool_id
  display_name = var.identity_pool_display_name
  description = var.identity_pool_description
  disabled = true
}

