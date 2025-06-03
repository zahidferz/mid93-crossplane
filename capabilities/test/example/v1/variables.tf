########## MANDATORY VARIABLES ##########
# The following variables are mandatory for every capability in fabric.
# They are required because they are the minimum required by the platform
# capability to perform lookups on the fabric platfomr infrastructure in
# order to output values that can be used within this capability

variable "capability_id" {
  description = "The crossplane managed resource name, i.e. The name allocated by crossplane for the managed resource"
  type        = string
}

variable "capability_name" {
  description = "The crossplane resource name, i.e. the name as defined by the end-user when creating the resource through kubernetes"
  type        = string
}

variable "capability_namespace" {
  description = "The crossplane resource namespace, i.e. the namespace as defined by the end-user when creating the resource through kubernetes"
  type        = string
}

variable "capability_version" {
  description = "The capability version, as defined by the end user when creating the resource through kubernetes"
  type        = string
}

variable "capability_protected" {
  description = "A flag indicating if the capability is protected, i.e. if it should be protected from deletion"
  type        = bool
  default     = true
}

variable "capability_token" {
  description = "A generic string that can be passed to the capability and is returned unchanged. Useful for determining if the capability has been updated"
  type        = string
  default     = ""
}

variable "environment_name" {
  description = "The unique fabric environment name, as defined in the fabric catalogue"
  type        = string
}


########## SHARE VARIABLES ########## (uncomment if sharing is required)
# The following variables are specific to this capability sharing with other environments
# variable "share_environments" {
#   description = "The capability sharing configuration"
#   type = list(object({
#     name      = string    
#   }))
#   default = []
# }

# variable "claim_outputs" {
#   description = "The outputs from this capability that are to be shared with other environments"
#   type = any
#   default = {}
# }

########## CAPABILITY VARIABLES ##########
# The following variables are specific to this capability
