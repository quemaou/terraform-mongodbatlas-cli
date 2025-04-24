# terraform-mongodbatlas-cli

This module allows you to run MongoDB Atlas CLI commands using Terraform. It uses the `mongocli` command line tool to execute the commands and captures the output.

## Requirements

To use this module, you need to have the following installed:
- [Terraform](https://www.terraform.io/downloads.html) (>= 1.3.7)
- [Mongodbatlas CLI](https://www.mongodb.com/docs/atlas/cli/stable/install/) (>= 1.26.0)

## Usage

In examples folder you can find examples of how to use this module.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
<!-- BEGIN_TF_DOCS -->
## Requirements

The following requirements are needed by this module:

- <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) (>= 1.3.7)

- <a name="requirement_mongodbatlas"></a> [mongodbatlas](#requirement\_mongodbatlas) (>= 1.26.0)

## Providers

The following providers are used by this module:

- <a name="provider_local"></a> [local](#provider\_local) (2.5.2)

- <a name="provider_null"></a> [null](#provider\_null) (3.2.4)

## Resources

The following resources are used by this module:

- [null_resource.this](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) (resource)
- [local_file.this](https://registry.terraform.io/providers/hashicorp/local/latest/docs/data-sources/file) (data source)

## Optional Inputs

The following input variables are optional (have default values):

### <a name="input_cli_query"></a> [cli\_query](#input\_cli\_query)

Description: Put here the query you want to run.

Type: `list(string)`

Default: `[]`

### <a name="input_output_path"></a> [output\_path](#input\_output\_path)

Description: Optional relative output file path. If not set, one will be generated in current directory.

Type: `string`

Default: `null`

## Outputs

The following outputs are exported:

### <a name="output_atlas_cli_output"></a> [atlas\_cli\_output](#output\_atlas\_cli\_output)

Description: Output of the Atlas CLI command.

### <a name="output_atlas_cli_output_raw"></a> [atlas\_cli\_output\_raw](#output\_atlas\_cli\_output\_raw)

Description: Output of the Atlas CLI command.
<!-- END_TF_DOCS -->
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
