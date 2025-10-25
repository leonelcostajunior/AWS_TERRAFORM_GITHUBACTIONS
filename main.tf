module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "6.4.1"
  name    = var.aws_vpc_name
  cidr    = var.aws_vpc_cidr

  azs             = var.aws_vpc_azs
  private_subnets = var.aws_vpc_private_subnet
  public_subnets  = var.aws_vpc_public_subnet

  enable_nat_gateway = true
  enable_vpn_gateway = true

  tags = var.aws_project_tags


}

module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "21.6.1"

  name               = var.aws_eks_name
  kubernetes_version = var.aws_eks_version


  # Optional
  endpoint_public_access = true



  vpc_id     = module.vpc.vpc_id
  subnet_ids = module.vpc.private_subnets



  eks_managed_node_groups = {
    default = {
      min_size       = 1
      max_size       = 2
      desired_size   = 1
      instance_types = var.aws_eks_managed_node_groups_instances_types
      capacity_type  = "ON_DEMAND"
    }
  }
}