output "vpc_id" {
  value = aws_vpc.vpc-final-project.id
}

output "subnet_id" {
  value = aws_subnet.subnet-final-project.id
}

output "private_subnet_id" {
  value = aws_subnet.subnet-private-final-project.id
}

