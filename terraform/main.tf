module "networking" {
  source = "./modules/networking"

  project_name              = var.project_name
  environment               = var.environment
  vpc_cidr                  = var.vpc_cidr
  public_subnet_cidr        = var.public_subnet_cidr
  private_db_subnet_cidr    = var.private_db_subnet_cidr
  availability_zone_public  = var.availability_zone_public
  availability_zone_private = var.availability_zone_private
}

module "compute" {
  source = "./modules/compute"

  project_name     = var.project_name
  environment      = var.environment
  vpc_id           = module.networking.vpc_id
  public_subnet_id = module.networking.public_subnet_id
  instance_type    = var.app_instance_type
  ami_id           = var.ami_id
}

module "database" {
  source = "./modules/database"

  project_name       = var.project_name
  environment        = var.environment
  vpc_id             = module.networking.vpc_id
  private_subnet_ids = [module.networking.private_db_subnet_id]
}