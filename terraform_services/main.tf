module "vpc" {
  source     = "./modules/vpc"
  cidr_block = var.vpc_cidr
}

module "subnets" {
  source             = "./modules/subnets"
  vpc_id             = module.vpc.vpc_id
  public_subnet_cidr = var.public_subnet_cidr
  private_subnet_cidr= var.private_subnet_cidr
  azs                = var.azs
}

module "s3" {
  source = "./modules/s3"
  bucket = var.s3_bucket
}

module "ec2" {
  source        = "./modules/ec2"
  ami           = var.ec2_ami
  instance_type = var.ec2_instance_type
}

module "rds" {
  source            = "./modules/rds"
  allocated_storage = var.db_allocated_storage
  engine            = var.db_engine
  instance_class    = var.db_instance_class
  db_name           = var.db_name
  username          = var.db_username
  password          = var.db_password
}

module "alb" {
  source             = "./modules/alb"
  name               = var.alb_name
  internal           = var.alb_internal
  load_balancer_type = var.alb_type
  subnets            = [module.subnets.public_subnet_id, module.subnets.private_subnet_id]
}

module "security_group" {
  source      = "./modules/security-group"
  name        = var.sg_name
  description = var.sg_description
  vpc_id      = module.vpc.vpc_id
}
