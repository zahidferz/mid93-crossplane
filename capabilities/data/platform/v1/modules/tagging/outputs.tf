output "tags" {
  description = "The merged tags based on input_values and additional_tags"
  value       = merge(local.output_tags, var.additional_tags)
}

output "resource_tags" {
  description = "Resource tags"
  value       = local.input_mapping.resource
}

output "estate_tags" {
  description = "Estate tags"
  value       = local.input_mapping.estate
}

output "component_tags" {
  description = "Component tags"
  value       = local.input_mapping.component
}