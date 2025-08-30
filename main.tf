module "vpc" {
  source = "./modules/vpc"
}

module "subnet" {
  source = "./modules/subnet"
  vpc_id = module.vpc.vpc_id
}

module "networking" {
  source = "./modules/networking"
  vpc_id = module.vpc.vpc_id
  subnet_id = module.subnet.subnet_id
}

module "security" {
  source = "./modules/security"
  vpc_id = module.vpc.vpc_id
}

module "ec2" {
  source = "./modules/ec2"
  subnet_id = module.subnet.subnet_id
  sg-id = module.security.sg-id
}










# module "security" {
#   source = ".//modules/security"
# }

# module "ec2" {
#   source = ".//modules/ec2"
# }