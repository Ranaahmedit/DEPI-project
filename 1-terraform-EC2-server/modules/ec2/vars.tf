variable "ec2_ami" {
  default = "ami-0866a3c8686eaeeba"
  type    = string
}

variable "ec2_instance_type" {
  default = "t2.large"
  type    = string
}

variable "ec2_name" {
  default = "final-depi-project"
  type    = string
}

variable "ec2_subnet_id" {
  default = null
  type    = string
}

variable "vpc_id" {
  default = null
  type    = string
}


variable "key_name" {
  description = "The name of the key pair to use for the instance"
  type        = string
  default     = "rana_key_pair"

}

