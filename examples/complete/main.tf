provider "aws" {
  region = "ap-southeast-1"
}

data "aws_caller_identity" "current" {}

data "aws_iam_policy_document" "cmk_key_policy" {
  statement {
    sid = "1"

    effect = "Allow"

    principals = {
      type = "AWS"
      identifiers = [
        "arn:aws:iam::${data.aws_caller_identity.current.account_id}:root"
      ]
    }

    actions = [
      "kms:*"
    ]

    resources = [
      "*"
    ]
  }
}

module "cmk_key" {
  source  = "../../"

  product_domain          = "bei"
  alias_name              = "secret-parameter"
  environment             = "production"
  description             = "Key to encrypt and decrypt secret parameters"
  deletion_window_in_days = 7
  key_policy              = "${data.aws_iam_policy_document.cmk_key_policy.json}"
}
