variable "alias_name" {
  description = "The name of the key alias"
  type        = "string"
}

variable "deletion_window_in_days" {
  description = "The duration in days after which the key is deleted after destruction of the resource"
  type        = "string"
  default     = 30
}

variable "description" {
  description = "The description of this DynamoDB table"
  type        = "string"
}

variable "environment" {
  description = "The environment this DynamoDB table belongs to"
  type        = "string"
}

variable "key_policy" {
  description = "The policy of the key usage"
  type        = "string"
}

variable "product_domain" {
  description = "The name of the product domain"
  type        = "string"
}
