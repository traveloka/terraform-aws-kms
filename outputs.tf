output "key_alias_arn" {
  description = "The arn of the key alias"
  value       = "${aws_kms_alias.key_alias.arn}"
}

output "key_alias_name" {
  description = "The name of the key alias"
  value       = "${aws_kms_alias.key_alias.name}"
}

output "key_arn" {
  description = "The arn of the key"
  value       = "${aws_kms_key.key.arn}"
}

output "key_id" {
  description = "The globally unique identifier for the key"
  value       = "${aws_kms_key.key.id}"
}
