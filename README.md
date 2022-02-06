<!-- BEGIN_TF_DOCS -->
## Prerequisites

- [Terraform](https://www.terraform.io) v0.12+
- [terraform-docs](https://github.com/terraform-docs/terraform-docs) v0.10+
- [terraform-docs/gh-actions](https://github.com/terraform-docs/gh-actions) v0.4+

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 2.20.0 |
| <a name="requirement_consul"></a> [consul](#requirement\_consul) | >= 2.4.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_website_s3_bucket"></a> [website\_s3\_bucket](#module\_website\_s3\_bucket) | ./modules/aws-s3-static-website-bucket | n/a |

## Resources

No resources.

## Inputs

No inputs.

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn"></a> [arn](#output\_arn) | ARN of the bucket |
| <a name="output_domain"></a> [domain](#output\_domain) | Domain name of the bucket |
| <a name="output_name"></a> [name](#output\_name) | Name (id) of the bucket |
<!-- END_TF_DOCS -->