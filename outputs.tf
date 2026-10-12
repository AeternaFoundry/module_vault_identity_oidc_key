output "identity_oidc_keys_id" {
  description = "Map of id values across all identity_oidc_keys, keyed the same as var.identity_oidc_keys except keys with no id are omitted"
  value       = { for k, v in vault_identity_oidc_key.identity_oidc_keys : k => v.id if v.id != null && length(v.id) > 0 }
}
output "identity_oidc_keys_algorithm" {
  description = "Map of algorithm values across all identity_oidc_keys, keyed the same as var.identity_oidc_keys except keys with no algorithm are omitted"
  value       = { for k, v in vault_identity_oidc_key.identity_oidc_keys : k => v.algorithm if v.algorithm != null && length(v.algorithm) > 0 }
}
output "identity_oidc_keys_allowed_client_ids" {
  description = "Map of allowed_client_ids values across all identity_oidc_keys, keyed the same as var.identity_oidc_keys except keys with no allowed_client_ids are omitted"
  value       = { for k, v in vault_identity_oidc_key.identity_oidc_keys : k => v.allowed_client_ids if v.allowed_client_ids != null && length(v.allowed_client_ids) > 0 }
}
output "identity_oidc_keys_name" {
  description = "Map of name values across all identity_oidc_keys, keyed the same as var.identity_oidc_keys except keys with no name are omitted"
  value       = { for k, v in vault_identity_oidc_key.identity_oidc_keys : k => v.name if v.name != null && length(v.name) > 0 }
}
output "identity_oidc_keys_namespace" {
  description = "Map of namespace values across all identity_oidc_keys, keyed the same as var.identity_oidc_keys except keys with no namespace are omitted"
  value       = { for k, v in vault_identity_oidc_key.identity_oidc_keys : k => v.namespace if v.namespace != null && length(v.namespace) > 0 }
}
output "identity_oidc_keys_rotation_period" {
  description = "Map of rotation_period values across all identity_oidc_keys, keyed the same as var.identity_oidc_keys except keys with no rotation_period are omitted"
  value       = { for k, v in vault_identity_oidc_key.identity_oidc_keys : k => v.rotation_period if v.rotation_period != null }
}
output "identity_oidc_keys_verification_ttl" {
  description = "Map of verification_ttl values across all identity_oidc_keys, keyed the same as var.identity_oidc_keys except keys with no verification_ttl are omitted"
  value       = { for k, v in vault_identity_oidc_key.identity_oidc_keys : k => v.verification_ttl if v.verification_ttl != null }
}

