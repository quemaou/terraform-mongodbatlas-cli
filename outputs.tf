output "atlas_cli_output" {
  description = "Output of the Atlas CLI command."
  value       = data.local_file.this.content
}
