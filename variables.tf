variable "api_gateway_authorizers" {
  description = <<EOT
Map of api_gateway_authorizers, attributes below
Required:
    - name
    - rest_api_id
Optional:
    - authorizer_credentials
    - authorizer_result_ttl_in_seconds
    - authorizer_uri
    - identity_source
    - identity_validation_expression
    - provider_arns
    - region
    - type
EOT

  type = map(object({
    name                             = string
    rest_api_id                      = string
    authorizer_credentials           = optional(string)
    authorizer_result_ttl_in_seconds = optional(number)
    authorizer_uri                   = optional(string)
    identity_source                  = optional(string)
    identity_validation_expression   = optional(string)
    provider_arns                    = optional(set(string))
    region                           = optional(string)
    type                             = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.api_gateway_authorizers : (
        v.authorizer_result_ttl_in_seconds == null || (v.authorizer_result_ttl_in_seconds >= 0 && v.authorizer_result_ttl_in_seconds <= 3600)
      )
    ])
    error_message = "must be between 0 and 3600"
  }
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

