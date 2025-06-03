locals {
  input_mapping = {

    # Input variable for tags, domain describes the business area that the instance / deployment belongs to
    
    # Component is the mid93 catalogue name of the resource
    "component" = {
      "accounts" = {
        "mid93:operational:product-name"        = "Platform"
        "mid93:operational:product-owner"       = "Head of Platform Engineering"
        "mid93:incident-management:playbook"    = "https://github.com/zahidferz/mid93-platform/tree/main/docs/design/accounts"
        #"mid93:cost-allocation:product-version" = "1.0.0"
      }
      "application" = {
        "mid93:operational:product-name"        = "Platform"
        "mid93:operational:product-owner"       = "Head of Platform Engineering"
        "mid93:incident-management:playbook"    = "https://github.com/zahidferz/mid93-platform/tree/main/docs/design"
        #"mid93:cost-allocation:product-version" = "1.0.0"
      }
      "certificate" = {
        "mid93:operational:product-name"        = "Platform"
        "mid93:operational:product-owner"       = "Head of Platform Engineering"
        "mid93:incident-management:playbook"    = "https://github.com/zahidferz/mid93-platform/tree/main/docs/design"
        #"mid93:cost-allocation:product-version" = "1.0.0"
      }
      "dns" = {
        "mid93:operational:product-name"        = "Platform"
        "mid93:operational:product-owner"       = "Head of Platform Engineering"
        "mid93:incident-management:playbook"    = "https://github.com/zahidferz/mid93-platform/tree/main/docs/design/dns"
        #"mid93:cost-allocation:product-version" = "1.0.0"
      }
      "domain-v1" = {
        "mid93:operational:product-name"        = "Platform"
        "mid93:operational:product-owner"       = "Head of Platform Engineering"
        "mid93:incident-management:playbook"    = "https://github.com/zahidferz/mid93-platform/tree/main/docs/design/domain"
        #"mid93:cost-allocation:product-version" = "1.0.0"
      }
      "egress-v1" = {
        "mid93:operational:product-name"        = "Egress"
        "mid93:operational:product-owner"       = "Head of Platform Engineering"
        "mid93:incident-management:playbook"    = "https://github.com/zahidferz/mid93-platform/tree/main/docs/design/egress"
        #"mid93:cost-allocation:product-version" = "1.0.0"
      }
      "ingress-v1" = {
        "mid93:operational:product-name"        = "Ingress"
        "mid93:operational:product-owner"       = "Head of Platform Engineering"
        "mid93:incident-management:playbook"    = "https://github.com/zahidferz/mid93-platform/tree/main/docs/design/ingress"
        #"mid93:cost-allocation:product-version" = "1.0.0"
      }
      "logging-v1" = {
        "mid93:operational:product-name"     = "Logging"
        "mid93:operational:product-owner"    = "Head of Platform Engineering"
        #"mid93:incident-management:playbook" = "https://github.com/zahidferz/mid93-platform/tree/main/docs/design/logging"
      }
      "ipam" = {
        "mid93:operational:product-name"        = "IPAM"
        "mid93:operational:product-owner"       = "Head of Platform Engineering"
        "mid93:incident-management:playbook"    = "https://github.com/zahidferz/mid93-platform/tree/main/docs/design"
        #"mid93:cost-allocation:product-version" = "1.0.0"
      }
      "platform" = {
        "mid93:operational:product-name"        = "Platform"
        "mid93:operational:product-owner"       = "Head of Platform Engineering"
        "mid93:incident-management:playbook"    = "https://github.com/zahidferz/mid93-platform/tree/main/docs/design"
        #"mid93:cost-allocation:product-version" = "1.0.0"
      }
      "workload-v1" = {
        "mid93:operational:product-name"        = "Workload"
        "mid93:operational:product-owner"       = "Head of Platform Engineering"
        "mid93:incident-management:playbook"    = "https://github.com/zahidferz/mid93-platform/tree/main/docs/design/workload"
        #"mid93:cost-allocation:product-version" = "1.0.0"
      }
    }

    # Resource is the resource type, this is used to establish role and purpose
    "resource" = {
      "application-load-balancer" = {
        "mid93:resource:service-role" = "Core Network"
        "mid93:resource:purpose"      = "Network Infrastructure"
      }
      "cloudwatch-log-destination" = {
        "mid93:resource:service-role" = "Observability"
        "mid93:resource:purpose"      = "Logging"
      }
      "cloudwatch-log-group" = {
        "mid93:resource:service-role" = "Observability"
        "mid93:resource:purpose"      = "Logging"
      }
      "cloudwatch-dashboard" = {
        "mid93:resource:service-role" = "Observability"
        "mid93:resource:purpose"      = "Logging"
      }
      "cloudwatch-alarm" = {
        "mid93:resource:service-role" = "Observability"
        "mid93:resource:purpose"      = "Logging"
      }
      "dynamodb" = {
        "mid93:resource:service-role" = "Storage"
        "mid93:resource:purpose"      = "Data Storage"
      }
      "cloudwatch-oam-sink" = {
        "mid93:resource:service-role" = "Observability"
        "mid93:resource:purpose"      = "Manage Access"
      }
      "cloudwatch-event-rule" = {
        "mid93:resource:service-role" = "Compute"
        "mid93:resource:purpose"      = "Cloudwatch Event Rule"
      }
      "elastic-ip" = {
        "mid93:resource:service-role" = "Core Network"
        "mid93:resource:purpose"      = "IP Address"
      }
      "ecs-cluster" = {
        "mid93:resource:service-role" = "Computing"
        "mid93:resource:purpose"      = "Containers Management"
      }
      "ecs-service" = {
        "mid93:resource:service-role" = "Computing"
        "mid93:resource:purpose"      = "Containers Management"
      }
      "ecs-task-definition" = {
        "mid93:resource:service-role" = "Computing"
        "mid93:resource:purpose"      = "Containers Management"
      }
      "endpoint" = {
        "mid93:resource:service-role" = "Core Network"
        "mid93:resource:purpose"      = "Network Infrastructure"
      }
      "firewall" = {
        "mid93:resource:service-role" = "Core Network"
        "mid93:resource:purpose"      = "Network Filtering"
      }
      "firewall-policy" = {
        "mid93:resource:service-role" = "Core Network"
        "mid93:resource:purpose"      = "Network Filtering"
      }
      "flow-logs" = {
        "mid93:resource:service-role" = "Observability"
        "mid93:resource:purpose"      = "Logging"
      }
      "grafana-workspace" = {
        "mid93:resource:service-role" = "Observability"
        "mid93:resource:purpose"      = "Visualization"
      }
      "iam-policy" = {
        "mid93:resource:service-role" = "Access Control"
        "mid93:resource:purpose"      = "Define Access"
      }
      "iam-role" = {
        "mid93:resource:service-role" = "Access Control"
        "mid93:resource:purpose"      = "Manage Access"
      }
      "iam-instance-profile" = {
        "mid93:resource:service-role" = "Access Control"
        "mid93:resource:purpose"      = "Manage Access"
      }
      "internet-gateway" = {
        "mid93:resource:service-role" = "Core Network"
        "mid93:resource:purpose"      = "Network Infrastructure"
      }
      "ipam-configuration" = {
        "mid93:resource:service-role" = "Core Network"
        "mid93:resource:purpose"      = "Network Infrastructure"
      }
      "ipam-pool" = {
        "mid93:resource:service-role" = "Core Network"
        "mid93:resource:purpose"      = "Network Infrastructure"
      }
      "ipam-scope" = {
        "mid93:resource:service-role" = "Core Network"
        "mid93:resource:purpose"      = "Network Infrastructure"
      }
      "kinesis-firehose" = {
        "mid93:resource:service-role" = "Data Processing"
        "mid93:resource:purpose"      = "ETL"
      }
      "kms-key" = {
        "mid93:resource:service-role" = "Encryption"
        "mid93:resource:purpose"      = "Data Security"
      }
      "lambda-function" = {
        "mid93:resource:service-role" = "Computing"
        "mid93:resource:purpose"      = "Serverless Computing"
      }
      "nacl" = {
        "mid93:resource:service-role" = "Core Network"
        "mid93:resource:purpose"      = "Network Filtering"
      }
      "nat-gateway" = {
        "mid93:resource:service-role" = "Core Network"
        "mid93:resource:purpose"      = "Network Infrastructure"
      }
      "org-policy" = {
        "mid93:resource:service-role" = "Access Control"
        "mid93:resource:purpose"      = "Define Access"
      }
      "org-unit" = {
        "mid93:resource:service-role" = "Access Control"
        "mid93:resource:purpose"      = "Define Access"
      }
      "parameter-store" = {
        "mid93:resource:service-role" = "Configuration"
        "mid93:resource:purpose"      = "Application Configuration Management"
      }
      "resource-share" = {
        "mid93:resource:service-role" = "Configuration"
        "mid93:resource:purpose"      = "Application Configuration Management"
      }
      "route-table" = {
        "mid93:resource:service-role" = "Core Network"
        "mid93:resource:purpose"      = "Network Infrastructure"
      }
      "route53-zone" = {
        "mid93:resource:service-role" = "Core Network"
        "mid93:resource:purpose"      = "Network Infrastructure"
      }
      "s3-bucket" = {
        "mid93:resource:service-role" = "Storage"
        "mid93:resource:purpose"      = "Object Storage"
      }
      "secret" = {
        "mid93:resource:service-role" = "Secrets Management"
        "mid93:resource:purpose"      = "Data Security"
      }
      "security-group" = {
        "mid93:resource:service-role" = "Core Network"
        "mid93:resource:purpose"      = "Network Filtering"
      }
      "service-catalog" = {
        "mid93:resource:service-role" = "Configuration"
        "mid93:resource:purpose"      = "Service Catalog"
      }

      "ses" = {
        "mid93:resource:service-role" = "Messaging"
        "mid93:resource:purpose"      = "Email"
      }
      "sns-topic" = {
        "mid93:resource:service-role" = "Messaging"
        "mid93:resource:purpose"      = "PubSub"
      }
      "sso-permission-set" = {
        "mid93:resource:service-role" = "Access Control"
        "mid93:resource:purpose"      = "Define Access"
      }
      "subnet" = {
        "mid93:resource:service-role" = "Core Network"
        "mid93:resource:purpose"      = "Network Infrastructure"
      }
      "transit-gateway" = {
        "mid93:resource:service-role" = "Core Network"
        "mid93:resource:purpose"      = "Network Infrastructure"
      }
      "transit-gateway-attachment" = {
        "mid93:resource:service-role" = "Core Network"
        "mid93:resource:purpose"      = "Network Infrastructure"
      }
      "transit-gateway-flow-logs" = {
        "mid93:resource:service-role" = "Core Network"
        "mid93:resource:purpose"      = "Network Infrastructure"
      }
      "transit-gateway-route-table" = {
        "mid93:resource:service-role" = "Core Network"
        "mid93:resource:purpose"      = "Network Infrastructure"
      }
      "vpc" = {
        "mid93:resource:service-role" = "Core Network"
        "mid93:resource:purpose"      = "Network Infrastructure"
      }
      "acm-certificate" = {
        "mid93:resource:service-role" = "SSL Validation"
        "mid93:resource:purpose"      = "Security Validation"
      }
      "acm-certificate-authority" = {
        "mid93:resource:service-role" = "SSL Validation"
        "mid93:resource:purpose"      = "Security Validation"
      }
      "application-load-balancer" = {
        "mid93:resource:service-role" = "Core Network"
        "mid93:resource:purpose"      = "Network Infrastructure"
      }
      "eks-node-group" = {
        "mid93:resource:service-role" = "Compute"
        "mid93:resource:purpose"      = "EKS Infrastructure"
      }
      "container-registry" = {
        "mid93:resource:service-role" = "Compute"
        "mid93:resource:purpose"      = "ECR Containter Registry"
      }
      "sqs-queue" = {
        "mid93:resource:service-role" = "Compute"
        "mid93:resource:purpose"      = "SQS Message Queue"
      }
      "efs-storage-system" = {
        "mid93:resource:service-role" = "Compute"
        "mid93:resource:purpose"      = "Storage System"
      }
      "backup" = {
        "mid93:resource:service-role" = "Backup and Recovery"
        "mid93:resource:purpose"      = "Disaster Recovery"
      }
    }


    "system" = {
    }
    "estate" = {
      "nonprod" = {
        "mid93:operational:operating-hours-schedule" = "8x5"
        "mid93:operational:backup-schedule"          = "Weekly"
        "mid93:operational:scale-down"               = "Yes"
        #"mid93:cost-allocation:stack"                = "NonProd"
      }
      "prod" = {
        "mid93:operational:operating-hours-schedule" = "24x7"
        "mid93:operational:backup-schedule"          = "Daily"
        "mid93:operational:scale-down"               = "No"
        #"mid93:cost-allocation:stack"                = "Production"
      }
    }
  }

  ## Define 'PTK' aka Primary Tag Key
  # Collect the account name
  ptk_account = var.account_name
  # Collect the application name (if provided)
  ptk_workload = var.workload_name
  ptk_environment = var.environment_name
  ptk_application = var.application_name
  # Merge the account and application name to create the PTK
  complete-ptk = {
    "mid93-tagging:ptk" = "${local.ptk_account}/${local.ptk_workload}/${local.ptk_environment}/${local.ptk_application}"
  }

  tag_mapping = {    
    resource_tags  = lookup(local.input_mapping.resource, var.resource, {})
    component_tags = lookup(local.input_mapping.component, var.component, {})
    estate_tags    = lookup(local.input_mapping.estate, var.estate, {})
  }

  output_tags = merge(    
    local.tag_mapping.resource_tags,
    local.tag_mapping.component_tags,
    local.tag_mapping.estate_tags,
    var.additional_tags,
    local.complete-ptk
  )
}
