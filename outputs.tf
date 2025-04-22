output "atlas_cli_output" {
  description = "Output of the Atlas CLI command."
  value       = jsondecode(data.local_file.this.content).results
}
