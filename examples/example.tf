terraform {
  required_version = ">= 1.3.7"

  required_providers {
    mongodbatlas = {
      source  = "mongodb/mongodbatlas"
      version = ">= 1.21.4"
    }
  }
}

provider "mongodbatlas" {}

variable "project_id" {
  description = "The project ID."
  type        = string
}

module "this" {
  source = "../"

  cli_query = ["clusters", "list", "--projectId", var.project_id, "-o", "json"]
}
