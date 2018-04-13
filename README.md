terraform-aws-kms-cmk
========================================

Terraform module which creates a KMS Customer Master Key (CMK) and its alias.

Usage
-----

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

Authors
-------

- [Andy Saputra](https://github.com/andysaputra)

License
-------

Apache 2 Licensed. See LICENSE for full details.
