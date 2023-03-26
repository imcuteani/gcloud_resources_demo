/*
terraform {
    backend "s3" {
      bucket = "techademy"
      key = "terraform"
      region = "us-east-1"
      encrypt = true
      dynamodb_table = "techademy"
    }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>3.74"
    }
  }
}
*/

provider "google" {
  project = "digital-gearing-375316"
  region  = "us-central"
  zone    = "us-central-c"


}