variable "identity_oidc_keys" {
  description = <<EOT
Map of identity_oidc_keys, attributes below
Required:
    - name
Optional:
    - algorithm
    - allowed_client_ids
    - namespace
    - rotation_period
    - verification_ttl
EOT

  type = map(object({
    name               = string
    algorithm          = optional(string)
    allowed_client_ids = optional(set(string))
    namespace          = optional(string)
    rotation_period    = optional(number)
    verification_ttl   = optional(number)
  }))
}

