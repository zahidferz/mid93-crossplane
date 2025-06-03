# This file is mandatory for all capabilities and contains
# the reference to the platform data module used to retrieve
# platform information, plus the resource used to implement
# deletion protection on the capabiity itself.check "

# These values should be updatd to reflect the values
# defined in the XRD within the _crossplane.yaml file
locals {
  capability_api_version = "v1.data.mid93.mid93.com/v1" # The kubernetes API version that this capability is registered under
  capability_kind        = "XPlatform"                    # The kubernetes kind that this capability as. Note this is the XRD kind, not the claim kind
}

# Add an annotation back on the crossplane managed resource
# or claim. This is use by kyverno as part of enforcing
# deletion protection at the kubernetes level
resource "kubernetes_annotations" "this" {
  count       = path.root == path.module ? 1 : 0 # Only add the annotation if this is the root module, ie the capability is being deployed directly and not referenced as a module
  api_version = local.capability_api_version
  kind        = var.capability_namespace == "" ? local.capability_kind : substr(local.capability_kind, 1, -1)
  force       = true

  metadata {
    name      = var.capability_name
    namespace = var.capability_namespace
  }

  annotations = {
    "mid93.mid93.com/protected" = "${lower(var.capability_protected)}"
  }
}

# Create a Crossplane usage resource back in the cluster
# if protection is turned on for this capability. This will
# inform Crossplane that the kubernetes resource cannot be
# deleted unless this usage resource is removed first
resource "kubernetes_manifest" "usage" {
  count = path.root == path.module && var.capability_protected ? 1 : 0 # Only add the usage resource if this is the root module and protection is enabled, ie the capability is being deployed directly and not referenced as a module
  manifest = {
    "apiVersion" = "apiextensions.crossplane.io/v1alpha1"
    "kind"       = "Usage"
    "metadata" = {
      "name" = var.capability_id
    }
    "spec" = {
      "of" = {
        "apiVersion" = local.capability_api_version
        "kind"       = local.capability_kind
        "resourceRef" = {
          "name" = var.capability_id
        }
      }
      "reason" = "Resource protection is enabled"
    }
  }
}
