module "eks" {
  # import module template
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 20.0" 

  # cluster info
  cluster_name  = local.name
  cluster_version = "1.31"

  # Optional
  cluster_endpoint_public_access = true
  enable_cluster_creator_admin_permissions = true

  vpc_id     = module.vpc.vpc_id
  subnet_ids = module.vpc.private_subnets

  # contol plane network
  control_plane_subnet_ids = module.vpc.intra_subnets

  # managing nodes in cluster
  eks_managed_node_groups = {
    amazon_prime-node = {
      min_size     = 2
      max_size     = 4
      desired_size = 2

      instance_types = ["t3.medium"]
      capacity_type  = "SPOT"
      attach_cluster_primary_security_group = true

      tags = {
        Environment = local.env
      }
    }
  }
    
      
  tags = {
    Environment = local.env
    Terraform   = "true"
  }
}