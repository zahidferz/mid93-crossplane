# Param Store - Get environments
module "param_environments" {
  source    = "../../../../modules/parameter_store"
  providers = {
    aws = aws.deployment
  }
  domain    = "global"
  system    = "mid93"
  component = "environments"  
  path      = "/*"
}

module "param_team" {
  source      = "../../../../modules/parameter_store"  
  providers = {
    aws = aws.deployment
  }
  domain      = "global"
  system      = "mid93"
  component   = "applications"
  environment = "all"
  region      = "global"
  path        = "${local.application_name}/team"
}

module "param_workloads" {
  source      = "../../../../modules/parameter_store"  
  providers = {
    aws = aws.deployment
  }
  domain      = "global"
  system      = "mid93"
  component   = "workload-v1"  
  path        = "/*"
}

module "param_account_name" {
  source      = "../../../../modules/parameter_store"  
  providers = {
    aws = aws.deployment
  }
  domain      = "global"
  system      = "mid93"
  component   = "accounts"
  environment = local.workload_estate
  region      = "global"
  path        = "${local.account_id}/account-name"
}

module "param_management_account" {
  source      = "../../../../modules/parameter_store"  
  providers = {
    aws = aws.deployment
  }
  domain      = "global"
  system      = "mid93"
  component   = "accounts"
  environment = "prod"
  region      = "global"
  path        = "mid93-management/account-id"
}

module "param_grafana" {
  source      = "../../../../modules/parameter_store"  
  providers = {
    aws = aws.deployment
  }
  domain      = "global"
  system      = "mid93"
  component   = "observability-v2"
  environment = "all"
  region      = "global"
  path        = "mid93-${title(local.platform_name)}-001/*"
}