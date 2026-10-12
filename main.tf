resource "vault_identity_oidc_key" "identity_oidc_keys" {
  for_each = var.identity_oidc_keys

  name               = each.value.name
  algorithm          = each.value.algorithm
  allowed_client_ids = each.value.allowed_client_ids
  namespace          = each.value.namespace
  rotation_period    = each.value.rotation_period
  verification_ttl   = each.value.verification_ttl
}

