########## MANDATORY VARIABLES ##########
# The following variables are mandatory for every capability in mid93.
# They are required because they are the minimum required by the platform
# capability to perform lookups on the mid93 platfomr infrastructure in
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
  description = "The unique mid93 environment name, as defined in the mid93 catalogue"
  type        = string
}

########## CAPABILITY VARIABLES ##########
# The following variables are specific to this capability

variable "fetch_vpc" {
  description = "A flag indicating if VPC data must be fetched"
  type        = bool
  default     = false
}

variable "fetch_cluster" {
  description = "A flag indicating if cluster data data must be fetched"
  type        = bool
  default     = false
}

variable "fetch_ado" {
  description = "A flag indicating if ado agents data data must be fetched"
  type        = bool
  default     = false
}

variable "tags_additional" {
  description = "Additional tags to be added to the derived tags"
  type        = map(string)
  default     = {}
}

# variable "account_name" {
#   description = "The name of the account"
#   type        = string
#   default     = ""
# }

# variable "workload_name" {
#   description = "The name of the workload"
#   type        = string
#   default     = ""
# }


