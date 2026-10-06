module "vpc" {
  source = "../../modules/vpc"

  project_name = "secure-devops"
  environment  = "dev"
  vpc_cidr     = "10.0.0.0/16"

  availability_zones = [
    "ap-south-1a",
    "ap-south-1b"
  ]
}

module "security_group" {
  source = "../../modules/security-group"

  name        = "secure-devops-dev-sg"
  description = "Security group for secure-devops dev environment"
  vpc_id      = module.vpc.vpc_id
  environment = "dev"
}