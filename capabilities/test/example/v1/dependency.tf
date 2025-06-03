# This file is provided as an example of how to reference another capability claim
# as a dependency of this capability. The code is commented-out as it would not work
# as the input variables are not defined.

# The platform team provides a module to ease the dependencies management. In this example
# we are calling the "dependency" module to reference a Key created by another capability claim.

# The module needs the namespace, the referenced dependency claim name, the referenced dependency
# claim kind and the referenced dependency claim api_version.

# The module also accepts a fail_on_not_found flag. If this flag is set to true, the module will
# raise an error if the dependency claim is not found. If the flag is set to false, the module will
# not raise an error if the dependency claim is not found. By default, the flag is set to true.
# This is useful for situations when we expect the referenced dependency claim is not yet ready/deployed.
# For example, when the referenced dependency claim is a "ClaimShare" that is created from a different environment.

# Finally, we also create back in the cluster a Crossplane usage resources. This marks the
# key claim as being used by this capability claim. This is used by Crossplane to ensure that
# the key is not deleted while it is still in use.

# For different kind of dependencies, the module call just need to be updated with the correct inputs,
# like the namespace, the referenced dependency claim name, the referenced dependency claim kind and the
# referenced dependency claim api_version.

## Use the dependency module to create a dependency on SAs
# module "service_account" {#   
#   source = "../../../../modules/dependency/v1"  
  
#   namespace             = var.capability_namespace
#   name                  = var.encryption_key_name
#   kind                  = "Key"
#   api_version           = "v1.encryption.fabric.gbgplc.com/v1"
#   current_capability_id = var.capability_id
#   fail_on_not_found     = true # This will cause a failure if the key doesn't exist yet
# }
