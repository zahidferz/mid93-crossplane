########## MANDATORY OUTPUTS ##########
# The following outputs are mandatory for every capability
# created through mid93. They ensure consistency and the
# ability to identity

output "capability_id" {
  description = "The crossplane managed resource name"
  value       = module.platform.capability_id
}

output "capability_workspace" {
  description = "The crossplane terraform provider workspace name"
  value       = module.platform.capability_workspace
}

output "capability_prefix" {
  description = "A unique identifier for this capability whose length is trimmed to a maximum of 32 characters. Intended for using in naming all resources"
  value       = module.platform.capability_prefix
}

output "capability_name" {
  description = "The crossplane capability resource name as defined in the resource metadata"
  value       = module.platform.capability_name
}

output "capability_namespace" {
  description = "The crossplane capability namespace name. If a managed resource then this will be an empty string"
  value       = module.platform.capability_namespace
}

output "capability_token" {
  description = "The capability token, as passed in by the end user"
  value       = var.capability_token
}

########## CAPABILITY OUTPUTS ##########
# The following variables are specific to this capability
