output "google_cloud_storage_bucket_name" {
  value = google_storage_bucket.auto-expire.name

}

output "google_cloud_storage_bucket_location" {
  value = google_storage_bucket.auto-expire.location
}