output "api_gateway_authorizers_id" {
  description = "Map of id values across all api_gateway_authorizers, keyed the same as var.api_gateway_authorizers"
  value       = { for k, v in aws_api_gateway_authorizer.api_gateway_authorizers : k => v.id if v.id != null && length(v.id) > 0 }
}
output "api_gateway_authorizers_arn" {
  description = "Map of arn values across all api_gateway_authorizers, keyed the same as var.api_gateway_authorizers"
  value       = { for k, v in aws_api_gateway_authorizer.api_gateway_authorizers : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "api_gateway_authorizers_authorizer_credentials" {
  description = "Map of authorizer_credentials values across all api_gateway_authorizers, keyed the same as var.api_gateway_authorizers"
  value       = { for k, v in aws_api_gateway_authorizer.api_gateway_authorizers : k => v.authorizer_credentials if v.authorizer_credentials != null && length(v.authorizer_credentials) > 0 }
}
output "api_gateway_authorizers_authorizer_result_ttl_in_seconds" {
  description = "Map of authorizer_result_ttl_in_seconds values across all api_gateway_authorizers, keyed the same as var.api_gateway_authorizers"
  value       = { for k, v in aws_api_gateway_authorizer.api_gateway_authorizers : k => v.authorizer_result_ttl_in_seconds if v.authorizer_result_ttl_in_seconds != null }
}
output "api_gateway_authorizers_authorizer_uri" {
  description = "Map of authorizer_uri values across all api_gateway_authorizers, keyed the same as var.api_gateway_authorizers"
  value       = { for k, v in aws_api_gateway_authorizer.api_gateway_authorizers : k => v.authorizer_uri if v.authorizer_uri != null && length(v.authorizer_uri) > 0 }
}
output "api_gateway_authorizers_identity_source" {
  description = "Map of identity_source values across all api_gateway_authorizers, keyed the same as var.api_gateway_authorizers"
  value       = { for k, v in aws_api_gateway_authorizer.api_gateway_authorizers : k => v.identity_source if v.identity_source != null && length(v.identity_source) > 0 }
}
output "api_gateway_authorizers_identity_validation_expression" {
  description = "Map of identity_validation_expression values across all api_gateway_authorizers, keyed the same as var.api_gateway_authorizers"
  value       = { for k, v in aws_api_gateway_authorizer.api_gateway_authorizers : k => v.identity_validation_expression if v.identity_validation_expression != null && length(v.identity_validation_expression) > 0 }
}
output "api_gateway_authorizers_name" {
  description = "Map of name values across all api_gateway_authorizers, keyed the same as var.api_gateway_authorizers"
  value       = { for k, v in aws_api_gateway_authorizer.api_gateway_authorizers : k => v.name if v.name != null && length(v.name) > 0 }
}
output "api_gateway_authorizers_provider_arns" {
  description = "Map of provider_arns values across all api_gateway_authorizers, keyed the same as var.api_gateway_authorizers"
  value       = { for k, v in aws_api_gateway_authorizer.api_gateway_authorizers : k => v.provider_arns if v.provider_arns != null && length(v.provider_arns) > 0 }
}
output "api_gateway_authorizers_region" {
  description = "Map of region values across all api_gateway_authorizers, keyed the same as var.api_gateway_authorizers"
  value       = { for k, v in aws_api_gateway_authorizer.api_gateway_authorizers : k => v.region if v.region != null && length(v.region) > 0 }
}
output "api_gateway_authorizers_rest_api_id" {
  description = "Map of rest_api_id values across all api_gateway_authorizers, keyed the same as var.api_gateway_authorizers"
  value       = { for k, v in aws_api_gateway_authorizer.api_gateway_authorizers : k => v.rest_api_id if v.rest_api_id != null && length(v.rest_api_id) > 0 }
}
output "api_gateway_authorizers_type" {
  description = "Map of type values across all api_gateway_authorizers, keyed the same as var.api_gateway_authorizers"
  value       = { for k, v in aws_api_gateway_authorizer.api_gateway_authorizers : k => v.type if v.type != null && length(v.type) > 0 }
}

