terraform {
  backend "s3" {
    bucket = "jenkins-app-project"
    region = "us-east-1"
    key = "jenkins-server/terraform.tfstate"
  }
}