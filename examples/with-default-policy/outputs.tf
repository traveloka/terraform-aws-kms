output "key_alias_arn" {
  description = "The arn of the key alias"
  value       = "${module.cmk_key.key_alias_arn}"
}

output "key_alias_name" {
  description = "The name of the key alias"
  value       = "${module.cmk_key.key_alias_name}"
}

output "key_arn" {
  description = "The arn of the key"
  value       = "${module.cmk_key.key_arn}"
}

output "key_id" {
  description = "The globally unique identifier for the key"
  value       = "${module.cmk_key.key_id}"
}
