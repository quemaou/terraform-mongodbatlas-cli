terraform {
  required_version = ">= 1.3.7"
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

output "result" {
  value = try(module.this.atlas_cli_output[0].createDate, "There isn't any cluster in the project.")
}
