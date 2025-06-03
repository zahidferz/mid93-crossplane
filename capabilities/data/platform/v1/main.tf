# Use of tagging module with the already derived data + some input vars
module "tagging" {
  source          = "./modules/tagging"  
  estate          = local.workload_estate  
  additional_tags = var.tags_additional
  account_name  = module.param_account_name.value
  workload_name = local.workload_name
  environment_name = var.capability_namespace
  application_name = local.application_name
}
