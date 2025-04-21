variable "cli_query" {
  description = "Put here the query you want to run."
  type        = list(string)
}

variable "output_path" {
  description = "Optional relative output file path. If not set, one will be generated in current directory."
  type        = string
  default     = null
}
