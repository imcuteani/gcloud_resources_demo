variable "project" {
  type = string
  description = "The GKE project name"
}

variable "region" {
  type = string
  description = "The GKE region name"
}

variable "zone" {
  type = string
  description = "The GKE zone name"
}

variable "service_account_id" {
  type = string
  description = "The Service account id for the Control Plane"
}

variable "service_display_name" {
  type = string
  description = "The Service account display name"
}

variable "bucket_name" {
    type = string
    description = "The storage bucket name"
}

variable "cloud_function_name" {
    type = string
    description = "The Cloud function name"
}

variable "cloud_function_description" {
    type = string
    description = "The cloud function description"
}