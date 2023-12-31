module "vpc" {
  source     = "./modules/vpc"
  vpc_cidr   = "30.0.0.0/16"
  availability_zones = var.az
}

module "sg" {
  source     = "./modules/sg"
  vpc_id   = module.vpc.vpc_id
  
}

module "eks" {
  source              = "./modules/eks"
  vpc_id              = module.vpc.vpc_id
  subnet_ids           = module.vpc.subnet_ids
  
}