module "network" {
  source = "./modules/network"

  vpc_cidr          = var.vpc_cidr
  public_subnet_cidr = var.public_subnet_cidr
  environment       = var.environment
}

module "security_group" {
  source = "./modules/security-group"

  vpc_id      = module.network.vpc_id
  environment = var.environment
}

module "ec2" {
  source = "./modules/ec2"

  ami_id            = "ami-0c02fb55956c7d316"
  instance_type     = "t2.micro"
  key_name          = "terraform-key"
  root_volume_size  = 20
  subnet_id         = module.network.public_subnet_id
  security_group_id = module.security_group.security_group_id
  environment       = var.environment
}
