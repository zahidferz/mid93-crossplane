########## MANDATORY OUTPUTS ##########
# The following outputs are mandatory for every capability
# created through mid93. They ensure consistency and the
# ability to identity

output "capability_id" {
  description = "The crossplane managed resource name"
  value       = local.capability_id
}

output "capability_workspace" {
  description = "The crossplane terraform provider workspace name"
  value       = local.capability_workspace
}

output "capability_prefix" {
  description = "A unique identifier for this capability whose length is trimmed to a maximum of 32 characters. Intended for using in naming all resources"
  value       = local.capability_prefix
}

output "capability_name" {
  description = "The crossplane capability resource name as defined in the resource metadata"
  value       = var.capability_name
}

output "capability_namespace" {
  description = "The crossplane capability namespace name. If a managed resource then this will be an empty string"
  value       = var.capability_namespace
}

output "capability_token" {
  description = "The capability token, as passed in by the end user"
  value       = var.capability_token
}

########## CAPABILITY OUTPUTS ##########
# The following variables are specific to this capability

output "application_name" {
  value = nonsensitive(local.application_name)
}

output "team_names" {
  value = nonsensitive(module.param_team.value)
}

output "workload_name" {
  value = nonsensitive(local.workload_name)
}

output "cluster_name" {
  value = nonsensitive(local.workload_name)
}

output "cluster_arn" {
  value = local.cluster_arn
}

output "cluster_oidc_issuer" {
  value = local.cluster_oidc_issuer
}

output "cluster_oidc_arn" {
  value = local.cluster_oidc_arn
}

output "cluster_permissionsBoundary_arn" {
  value = local.cluster_permissions_boundary_arn
}

output "account_name" {
  value = nonsensitive(module.param_account_name.value)
}

output "workload_region" {
  value = nonsensitive(local.workload_region)
}

output "workload_vpc_id" {
  value = local.vpc_id
}

output "workload_subnets" {
  value = local.workload_subnets
}

output "workload_azs" {
  value = local.workload_azs
}

output "workload_amp_endpoint" {
  value = local.workload_amp_endpoint
}

output "management_securitygroup_id" {
  value = local.management_securitygroup_id
}

output "management_securitygroup_name" {
  value = local.management_securitygroup_name
}

output "environment_securitygroup_id" {
  value = nonsensitive(local.sg_id)
}

output "environment_securitygroup_name" {
  value = nonsensitive(local.sg_name)
}

output "environment_adminRole_arn" {
  value = local.admin_role_arn != "" ? nonsensitive(local.admin_role_arn) : local.admin_role_arn
}

output "ado_securitygroup_id" {
  value = nonsensitive(local.ado_agent_securitygroup_id)
}

output "environment_adoRole_arn" {
  value = local.ado_squad_role
}

output "estate_name" {
  value = nonsensitive(local.workload_estate)
}

output "cloudwatch_log_retention" {
  value = local.cloudwatch_log_retention
}

output "platform_name" {
  value = local.platform_name
}

output "tags_derived" {
  value = nonsensitive(module.tagging.tags)
}

output "aws_management_org_id" {
  value = local.aws_management_org_id
}

output "legacy_management_org_id" {
  value = local.legacy_management_org_id
}

output "grafana_endpoint" {
  value = nonsensitive(local.grafana_endpoint)
}

output "grafana_roleArn" {
  value = nonsensitive(local.grafana_role_arn)
}

output "grafana_key" {
  sensitive = true
  value     = local.grafana_key
}

