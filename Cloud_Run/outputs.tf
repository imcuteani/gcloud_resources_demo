output "google_cloud_run_service_name" {
    value = google_cloud_run_service.default.name 
}

output "google_sql_database_instance_name" {
    value = google_sql_database_instance.instance.name
}