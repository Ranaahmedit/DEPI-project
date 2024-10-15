terraform {
  backend "s3" {
    bucket = "jenkins-app-project"
    region = "us-east-1"
    key = "eks/terraform.tfstate"
  }
}