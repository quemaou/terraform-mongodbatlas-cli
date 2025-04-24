output "atlas_cli_output" {
  description = "Output of the Atlas CLI command in JSON format."
  value       = jsondecode(data.local_file.this.content).results
}

output "atlas_cli_output_raw" {
  description = "Output of the Atlas CLI command in raw format."
  value       = data.local_file.this.content
}
