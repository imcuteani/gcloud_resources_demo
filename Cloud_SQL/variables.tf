variable "project" {
  type        = string
  description = "The Google Cloud Project Name"

}

variable "region" {
  type        = string
  description = "The Google Cloud Project region"
}

variable "zone" {
  type        = string
  description = "The Google Cloud Project zone"
}

variable "sql_database_name" {
  type        = string
  description = "The Cloud SQL database name"
}

variable "sql_database_instance_name" {
  type        = string
  description = "The Cloud SQL database instance name"
}

variable "sql_database_instance_region" {
  type        = string
  description = "The Cloud SQL database instance region"
}