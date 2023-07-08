module "vpc" {
  source     = "./modules/vpc"
  vpc_cidr   = "10.0.0.0/16"
  availability_zones = var.az
}

module "sg" {
  source     = "./modules/sg"
  vpc_id   = module.vpc.vpc_id
  
}