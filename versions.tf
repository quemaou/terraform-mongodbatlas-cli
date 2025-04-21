terraform {
  required_version = ">= 1.3.7"

  required_providers {
    mongodbatlas = {
      source  = "mongodb/mongodbatlas"
      version = ">= 1.26.0"
    }
  }
}
