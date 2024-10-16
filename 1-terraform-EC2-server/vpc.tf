module "vpc-final-project" {
  source = "./modules/vpc"
}

output "vpc_id" {
  value = module.vpc-final-project.vpc_id
}

output "subnet_id" {
  value = module.vpc-final-project.subnet_id
}

output "private_subnet_id" {
  value = module.vpc-final-project.private_subnet_id
}
