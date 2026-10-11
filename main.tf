module "network" {
  source = "./modules/network"

  vpc_cidr          = "10.0.0.0/16"
  public_subnet_cidr = "10.0.1.0/24"
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
  key_name         = "terraform-key"
  subnet_id         = module.network.public_subnet_id
  security_group_id = module.security_group.security_group_id
  environment       = var.environment
}
