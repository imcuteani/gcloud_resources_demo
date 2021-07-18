# Create Google Cloud Storage bucket 

resource "google_storage_bucket" "auto-expire" {
    name = "${var.storage_bucket_name}"
    location = "${var.storage_bucket_location}"
    uniform_bucket_level_access = true
    force_destroy = true

    lifecycle_rule {
        condition {
          age=1
        }
        action {
          type="Delete"
        }
    
    }
  
}