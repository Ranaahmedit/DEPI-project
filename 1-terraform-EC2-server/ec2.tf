module "ec2-project-module" {
  source       = "./modules/ec2"
  ec2_subnet_id =  module.vpc-final-project.subnet_id
  vpc_id      =   module.vpc-final-project.subnet_id  
}