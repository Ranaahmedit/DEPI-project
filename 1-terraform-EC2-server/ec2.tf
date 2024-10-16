module "ec2-project-module" {
  source       = "./modules/ec2"
  ec2_subnet_id =  module.vpc-final-project.subnet_id
  vpc_id      =   module.vpc-final-project.vpc_id  
}

output "ec2_id" {
  value = module.ec2-project-module.ec2_id
}

output "ec2_ssh" {
  value = "ubuntu@${module.ec2-project-module.ec2_public_ip}"
}

output "ec2_public_ip" {
  value = module.ec2-project-module.ec2_public_ip
}
