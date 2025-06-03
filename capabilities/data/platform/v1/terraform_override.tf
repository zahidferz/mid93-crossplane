# Override the default terraform required
# provider configuration so we can specify
# a provider version for this capability.
# https://developer.hashicorp.com/terraform/language/files/override
terraform {
  required_providers {
    aws = {
      source                = "hashicorp/aws"
      #version               = "5.32.1" - commented out as this causes issue as we have a terraform override in each capability.
      configuration_aliases = [aws.deployment]
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "2.25.2"
    }
  }
}