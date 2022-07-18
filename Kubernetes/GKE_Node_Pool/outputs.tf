output "gke_container_cluster_id" {
  value = google_container_cluster.primary.id
}

output "google_sql_database_name" {
  value = google_sql_database.sql_database.name

}

output "google_sql_database_id" {
  value = google_sql_database.sql_database.id
}

output "google_sql_database_instance_name" {
  value = google_sql_database_instance.instance_name.name
}

output "google_sql_database_instance_id" {
  value = google_sql_database_instance.instance_name.id
}