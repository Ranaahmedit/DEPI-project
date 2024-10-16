output "ec2_id" {
  value =aws_instance.project.id
}

output "ec2_ssh" {
  value = "ubuntu@${aws_instance.project.public_ip}"
}

output "ec2_public_ip" {
  value = aws_eip.eip_project.public_ip
}

