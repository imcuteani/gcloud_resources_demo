variable "project" {
  type        = string
  description = "The GKE project name"
}

variable "region" {
  type        = string
  description = "The GKE region name"
}

variable "zone" {
  type        = string
  description = "The GKE zone name"
}

variable "service_account_id" {
  type        = string
  description = "The Service account id for the Control Plane"
}

variable "service_display_name" {
  type        = string
  description = "The Service account display name"
}

variable "primary_cluster_name" {
  type        = string
  description = "The GKE primary cluster name"
}

variable "primary_cluster_location" {
  type        = string
  description = "The primary GKE cluster location"
}

variable "node_pool_cluster_name" {
  type        = string
  description = "The GKE node pool cluster name"

}


variable "node_machine_type" {
  type        = string
  description = "The Cluster node machine type"
}

variable "client_id" {
  type        = string
  description = "The client Id for Google Cloud"
}

variable "client_secret" {
  type        = string
  description = "The client secret for Google Cloud"
}

variable "quota_project_id" {
  type        = string
  description = "The quota project id"
}

variable "refresh_token" {
  type        = string
  description = "The refresh token"
}

variable "type" {
  type        = string
  description = "The type for Google cloud user credentials"
}

variable "gcp_credentials" {
  type        = string
  description = "The GCP credentials"
}

variable "sql_database_name" {
  type = string
  description = "The Cloud SQL database name"
}

