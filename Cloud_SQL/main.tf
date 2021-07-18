# The main configurations of Cloud SQL terraform module

resource "google_sql_database" "sql_database" {
  name = "${var.sql_database_name}"
  instance = google_sql_database_instance.instance_name.name
}

resource "google_sql_database_instance" "instance_name" {
  name = "${var.sql_database_instance_name}"
  region = "${var.sql_database_instance_region}"
  settings {
    tier = "db-f1-micro"
  }
  deletion_protection = "true"
}