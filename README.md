terraform-aws-kms-cmk
========================================

Terraform module which creates a KMS Customer Master Key (CMK) and its alias.

Variables
---------

- **alias_name** - (Required) The name of the key alias.

- **deletion_window_in_days** - (Optional, Default: 30) The duration in days after which the key is deleted after destruction of the resource.

- **description** - (Required) The description of the key.

- **environment** - (Required) The environment this key belongs to.

- **key_policy** - (Required) The policy of the key.

- **product_domain** - (Required) The name of the product domain. This will become the prefix of the table name.

Outputs
---------
- **key_alias_arn** - The arn of the key alias.

- **key_arn** - The arn of the key.

- **key_id** - The globally unique identifier for the key.

Usage
-----

```hcl
module "cmk_key" {
  source                  = "github.com/traveloka/terraform-aws-kms-cmk?ref=master"

  product_domain          = "bei"
  alias_name              = "tvlk-key"
  environment             = "prod"
  description             = "The key for testing purpose"
  deletion_window_in_days = 7
  key_policy              = "${data.aws_iam_policy_document.cmk_key_policy.json}"
}
```

Authors
-------

- [Andy Saputra](https://github.com/andysaputra)

License
-------

Apache 2 Licensed. See LICENSE for full details.
