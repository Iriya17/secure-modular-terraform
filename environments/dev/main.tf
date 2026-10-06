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