variable "alias_name" {
  description = "The name of the key alias"
  type        = string
}

variable "deletion_window_in_days" {
  description = "The duration in days after which the key is deleted after destruction of the resource"
  type        = string
  default     = 30
}

variable "description" {
  description = "The description of this KMS key"
  type        = string
}

variable "environment" {
  description = "The environment this KMS key belongs to"
  type        = string
}

variable "key_policy" {
  description = "The policy of the key usage"
  type        = string
  default     = ""
}

variable "product_domain" {
  description = "The name of the product domain"
  type        = string
}

variable "additional_tags" {
  type        = map(string)
  description = "Additional tags to be added to kms-cmk"
  default     = {}
}
