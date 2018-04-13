provider "aws" {
  region = "ap-southeast-1"
}

module "cmk_key" {
  source = "../../"

  product_domain          = "bei"
  alias_name              = "secret-parameter"
  environment             = "production"
  description             = "Key to encrypt and decrypt secret parameters"
  deletion_window_in_days = 7
}
