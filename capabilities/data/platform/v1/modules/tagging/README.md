# mid93 Tagging Module

This Terraform module is designed to generate standardised tags for AWS resources based on predefined mappings and inputs. By using this module, you can ensure consistent tagging across the farbic infrastructure, making it easier to manage, track, and report on our resources.

## Features

- Generates tags based on input values (domain, squad, component, resource, estate)
- Input values are demonstrated below, but domain and squad map to mid93 business areas and team names
- Component maps to the Service Catalogue item that resources belong to.
- Resource is a little subjective but nominally we are mapping to the AWS resource type then deriving values to group these resources. Table to follow once we have used the module more. 
- There is input validation on the module so any values that you need to add must be duplicated in the variable validation, this can't be dynamically looked up due to limitations in TF. 
- Provides a standardised name tag based on product name, service role, and stack
- Merges additional custom tags provided by the user

<br><br>

## Usage

### Adding all tags

```hcl
module "aws_tagging" {
  source = "./aws/modules/tagging"

  domain          = "global"
  squad           = "mid93"
  component       = "egress-v1"
  resource        = "flow-log"
  estate          = local.aws_account_type
  additional_tags = {
    "mid93:data:classification" = "PII"
    "mid93:compliance:framework" = "PCI-DSS"
  }
}

resource "aws_instance" "mid93_instance" {
  instance_type = "t2.micro"
  tags          = module.aws_tagging.tags
}
```
<br><br>

### Adding specific tag blocks

```hcl
module "tagging_module" {
  source = "./modules/aws/tagging"

  # Pass the required variables for the module
  domain    = var.domain
  squad     = var.squad
  resource  = var.resource
}

resource "aws_instance" "mid93_instance" {
  # Other config settings

  tags = merge(
    module.tagging_module.domain_tags,
    module.tagging_module.squad_tags,
    module.tagging_module.resource_tags,
    # Add other tag sets if needed
  )
}
```

## Inputs

| Name            | Description                                               | Type   | Default | Required |
|-----------------|-----------------------------------------------------------|--------|---------|:--------:|
| domain          | Area of the business that owns this instance              | string | -       | yes      |
| squad           | Squad responsible for this instance                       | string | -       | yes      |
| component       | Top level catalogue definition of the instance            | string | -       | yes      |
| resource        | Individual resource level identifier                      | string | -       | yes      |
| estate          | Estate where the instance is deployed                     | string | -       | yes      |
| additional_tags | A map of additional tags to be merged with generated tags | map    | {}      | no       |


<br>

## Allowed Input Values

| Input             | Allowed values                                              | Type   | Default | Required |
|-------------------|-------------------------------------------------------------|--------|---------|:--------:|
| domain            | identity, location, fraud, global                           | string | -       | yes      |
| squad             | mid93, cloud_ops                                           | string | -       | yes      |
| component         | egress-v1, parameter-v1                                     | string | -       | yes      |
| resource          | flow-logs, iam-role, iam-policy, transit-gateway,           | string | -       | yes      |         
|                   |   firewall, kms-key, internet-gateway, nat-gateway,         |        |         |          |
|                   |   elastic-ip, firewall-policy, route-table, parameter-store |        |         |          |
| estate            | nonprod, prod                                               | string | -       | yes      |
| additional_tags   | unregulated                                                 | map    | -       | no       |

<br>




## Outputs

| Name            | Description                                                                          |
|-----------------|--------------------------------------------------------------------------------------|
| domain_tags     | Domain specific tags based on the input variable `domain`                            |
| squad_tags      | Squad specific tags based on the input variable `squad`                              |
| resource_tags   | Resource specific tags based on the input variable `resource`                        |
| name_tag        | The generated name tag based on the domain, squad, and resource tags                 |
| merged_tags     | The complete set of merged tags (domain, squad, resource, name, and additional tags) |

You can use the individual tag maps (domain_tags, squad_tags, resource_tags) when you need to reference specific tags for resources. The merged_tags output can be used when you want the full set of tags applied to a resource.



## Variables required (for use in the root dir)

```hcl
variable "domain" {
  type        = string
  description = "Business Domain Value"
  default     = ""
}

variable "squad" {
  type        = string
  description = "Squad Ownership Value"
  default     = ""
}

variable "resource" {
  type        = string
  description = "Application Value"
  default     = ""
}

variable "component" {
  type        = string
  description = "Component Value"
  default     = ""
}

variable "estate" {
  type        = string
  description = "Estate Value"
  default     = ""
}

variable "additional_tags" {
  type        = map(string)
  description = "A map of additional tags to be added to the output tags"
  default     = {}
}
```
