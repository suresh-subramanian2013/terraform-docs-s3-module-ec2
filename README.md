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

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 3.74.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_website_s3_bucket"></a> [website\_s3\_bucket](#module\_website\_s3\_bucket) | ./modules/aws-s3-static-website-bucket | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_instance.myec2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance) | resource |
| [aws_ami.web_ami](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ami) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ec2name"></a> [ec2name](#input\_ec2name) | n/a | `any` | n/a | yes |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | n/a | `any` | n/a | yes |
| <a name="input_instancecount"></a> [instancecount](#input\_instancecount) | n/a | `any` | n/a | yes |
| <a name="input_keyname"></a> [keyname](#input\_keyname) | n/a | `any` | n/a | yes |
| <a name="input_zone"></a> [zone](#input\_zone) | n/a | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn"></a> [arn](#output\_arn) | ARN of the bucket |
| <a name="output_domain"></a> [domain](#output\_domain) | Domain name of the bucket |
| <a name="output_name"></a> [name](#output\_name) | Name (id) of the bucket |
<!-- END_TF_DOCS -->