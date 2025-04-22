locals {
  tmp_dir             = "${path.cwd}/.terraform/tmp"
  default_output_path = "${local.tmp_dir}/atlas_output_${uuid()}.txt"
  final_output_path   = var.output_path != null ? var.output_path : local.default_output_path
}

resource "null_resource" "this" {
  provisioner "local-exec" {
    command = "bash ${path.module}/scripts/script.sh \"${local.final_output_path}\" ${join(" ", [for arg in var.cli_query : "\"${arg}\""])}"
  }

  triggers = {
    cli_command = join(" ", var.cli_query)
    output_path = local.final_output_path
  }
}

data "local_file" "this" {
  filename = local.final_output_path

  depends_on = [null_resource.this]
}
