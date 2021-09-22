# google cloud function resource block

resource "google_storage_bucket" "bucket"{
    name = var.bucket_name
}

resource "google_storage_bucket_object" "archive" {
    bucket = google_storage_bucket.bucket.name
    
}

resource "google_cloudfunctions_function" "function" {
    name = var.cloud_function_name
    description = var.cloud_function_description
    runtime = "nodejs14"

    available_memory_mb = 128
    source_archive_bucket = google_storage_bucket.bucket.name
    source_archive_bucket = google_storage_bucket_object.archive.name
    trigger_http = true
    entry_point = "hello_GET"
}

# IAM block definition for invoking the function

resource "google_cloudfunctions_function_iam_member" "invoker" {
    project = google_cloudfunctions_function.function.project
    region = google_cloudfunctions_function.function.region
    cloud_function = google_cloudfunctions_function.function.name
  
   role = "roles/cloudfunctions.invoker"
   member = "allusers"

}