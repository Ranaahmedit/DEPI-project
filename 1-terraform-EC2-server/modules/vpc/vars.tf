variable "vpc_config" {
  default = {
    cidr                     = "10.0.0.0/16"
    name                     = "vpc-final-project"
    subnet_cidr              = "10.0.1.0/24"
    private_subnet_cidr      = "10.0.2.0/24"
    subnet_avb               = "us-east-1a"
    private_subnet_name      = "private-subnet-final-project-"
    public_subnet_name       = "public-subnet-final-project"
    route_name               = "route-final-project"
    private_route_name       = "private-route-final-project"
    gw_name                  = "gw-final-project"
  }
}