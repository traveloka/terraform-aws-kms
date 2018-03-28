provider "aws" {
  region = "ap-southeast-1"
}

data "aws_caller_identity" "current" {}

data "aws_iam_policy_document" "cmk_key_policy" {
  statement {
    sid = "1"

    principals = {
      type = "AWS"
      identifiers = ["${data.aws_caller_identity.current.arn}"]
    }

    actions = [
      "kms:Decrypt",
      "kms:Encrypt"
    ]

    resources = [
      "*"
    ]
  }
}

module "cmk_key" {
  source                  = "../../"

  product_domain          = "bei"
  alias_name              = "testing"
  environment             = "special"
  description             = "testing purpose"
  deletion_window_in_days = 7
  key_policy              = "${data.aws_iam_policy_document.cmk_key_policy.json}"
}
