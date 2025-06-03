data "aws_vpc" "workload_vpc" {
  count = var.fetch_vpc ? 1 : 0
  tags = {
    Name = local.workload_name
  }
}

data "aws_subnets" "workload_subnets" {
  count = var.fetch_vpc ? 1 : 0
  filter {
    name   = "vpc-id"
    values = [local.vpc_id]
  }
  tags = {
    Name = "${local.workload_name}-workload-*" # Filter by Workload subnet(s) name
  }
}

data "aws_subnet" "subnet_azs" {
  count = length(local.workload_subnets)
  id    = element(local.workload_subnets, count.index)
}

data "aws_eks_cluster" "eks_cluster" {
  count = var.fetch_cluster ? 1 : 0
  name  = local.workload_name
}

data "aws_iam_openid_connect_provider" "oidc_provider" {
  count = var.fetch_cluster ? 1 : 0
  url   = local.cluster_oidc_issuer
}

data "aws_iam_policy" "permissions_boundary" {
  count = var.fetch_cluster ? 1 : 0
  name  = "${local.workload_name}-crossplane-permissions-boundary"
}

data "aws_iam_roles" "ado_squad_roles" {  
  count = var.fetch_ado ? 1 : 0
  name_regex  = "${local.workload_name}-ado-agent-squad"
}