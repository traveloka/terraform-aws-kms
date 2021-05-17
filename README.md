# terraform-aws-kms-cmk

[![Release](https://img.shields.io/github/release/traveloka/terraform-aws-kms-cmk.svg)](https://github.com/traveloka/terraform-aws-kms-cmk/releases)
[![Last Commit](https://img.shields.io/github/last-commit/traveloka/terraform-aws-kms-cmk.svg)](https://github.com/traveloka/terraform-aws-kms-cmk/commits/master)
![Open Source Love](https://badges.frapsoft.com/os/v1/open-source.png?v=103)

## Description

Terraform module which creates a KMS Customer Master Key (CMK) and its alias.


## Prerequisites



## Dependencies

This Terraform module have no dependencies to another modules


## Getting Started

### Usage
```hcl
module "cmk_key" {
  source  = "github.com/traveloka/terraform-aws-kms-cmk?ref=v0.1.0"

  product_domain          = "bei"
  alias_name              = "secret-parameter"
  environment             = "production"
  description             = "Key to encrypt and decrypt secret parameters"
  key_policy              = "${data.aws_iam_policy_document.cmk_key_policy.json}"
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| additional\_tags | Additional tags to be added to kms-cmk | `map` | `{}` | no |
| alias\_name | The name of the key alias | `string` | n/a | yes |
| deletion\_window\_in\_days | The duration in days after which the key is deleted after destruction of the resource | `string` | `30` | no |
| description | The description of this KMS key | `string` | n/a | yes |
| environment | The environment this KMS key belongs to | `string` | n/a | yes |
| key\_policy | The policy of the key usage | `string` | `""` | no |
| product\_domain | The name of the product domain | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| key\_alias\_arn | The arn of the key alias |
| key\_alias\_name | The name of the key alias |
| key\_arn | The arn of the key |
| key\_id | The globally unique identifier for the key |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Contributing

This module accepting or open for any contributions from anyone, please see the [CONTRIBUTING.md](https://github.com/traveloka/terraform-aws-kms/blob/master/CONTRIBUTING.md) for more detail about how to contribute to this module.

## License

This module is under Apache License 2.0 - see the [LICENSE](https://github.com/traveloka/terraform-aws-kms/blob/master/LICENSE) file for details.