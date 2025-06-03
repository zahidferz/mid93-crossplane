variable "resource" {
  type        = string
  description = "Resource type"
  default     = ""

  validation {
    condition = contains(
      [
        "",
        "application-load-balancer",
        "cloudwatch-log-destination",
        "cloudwatch-log-group",
        "cloudwatch-oam-group",
        "cloudwatch-dashboard",
        "cloudwatch-alarm",
        "dynamodb",
        "elastic-ip",
        "ecs-cluster",
        "ecs-service",
        "ecs-task-definition",
        "endpoint",
        "firewall",
        "firewall-policy",
        "flow-logs",
        "grafana-workspace",
        "iam-policy",
        "iam-role",
        "iam-instance-profile",
        "internet-gateway",
        "ipam-configuration",
        "ipam-pool",
        "ipam-scope",
        "kinesis-firehose",
        "kms-key",
        "nacl",
        "nat-gateway",
        "lambda-function",
        "org-policy",
        "org-unit",
        "parameter-store",
        "resource-share",
        "route-table",
        "route53-zone",
        "s3-bucket",
        "secret",
        "security-group",
        "service-catalog",
        "ses",
        "sns-topic",
        "sso-permission-set",
        "subnet",
        "transit-gateway",
        "transit-gateway-attachment",
        "transit-gateway-flow-logs",
        "transit-gateway-route-table",
        "vpc",
        "acm-certificate",
        "acm-certificate-authority",
        "application-load-balancer",
        "eks-node-group",
        "container-registry",
        "sqs-queue",
        "cloudwatch-event-rule",
        "efs-storage-system"
    ], var.resource)
    error_message = "Invalid resource. Please refer to the description for allowed values."
  }
}
variable "component" {
  type        = string
  description = "Component Value"
  default     = ""
  validation {
    condition = contains([
      "",
      "accounts",
      "application",
      "certificate",
      "dns",
      "domain-v1",
      "egress-v1",
      "ingress-v1",
      "ipam",
      "notification",
      "logging-v1",
      "platform",
      "workload-v1"
    ], var.component)
    error_message = "Invalid component. Please refer to the description for allowed values."
  }
}
variable "estate" {
  type        = string
  description = "Estate Value"
  default     = ""
  validation {
    condition     = contains(["nonprod", "prod"], var.estate)
    error_message = "Invalid estate. Please refer to the description for allowed values."
  }
}
variable "additional_tags" {
  type        = map(string)
  description = "A map of additional tags to be added to the output tags"
  default     = {}
}


## Tagging Extension - PTK
variable "account_name" {
  type        = string
  description = "The name of the account"
  default     = ""
}

variable "workload_name" {
  type        = string
  description = "The name of the workload"
  default     = ""
}

variable "environment_name" {
  type        = string
  description = "The name of the evnironment"
  default     = ""
}

variable "application_name" {
  type        = string
  description = "The name of the application"
  default     = ""
}
