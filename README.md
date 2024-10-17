# Deploy a web app using Terraform, EKS Cluster, ansible, and Jenkins

![image](https://github.com/user-attachments/assets/6cc6001f-ae27-4411-803d-9fa3b5d618a2)


# Jenkins Pipeline for Deploying Nginx web app on EKS

This project demonstrates deploying an Nginx web app to an AWS Elastic Kubernetes Service (EKS) cluster using Jenkins.


## Steps

### 1. Create an EC2 Key Pair
- Generate an EC2 key pair to securely access the EC2 instances for the Jenkins server and other resources.

### 2. Set Up Jenkins Server
- Create an EC2 instance to host the Jenkins server.
- Install Jenkins and all required dependencies by Ansible playbook.
- Ensure that Jenkins is properly configured and running.

### 3. Access and Set Up Jenkins
- Access the Jenkins server through its web interface.
- Configure Jenkins plugins and tools necessary for building and deploying to EKS.

### 4. Run Jenkins Pipeline for EKS Deployment
- The pipeline will automate the creation of a Kubernetes cluster on AWS EKS.
- Deploy the Nginx web app in the Kubernetes cluster and expose it as a service.

### 5. Test the Deployment
- Verify that the Nginx service is running correctly within the Kubernetes cluster.
- Access the service to ensure it is deployed successfully.

### 6. Clean Up Resources
- Clean up all resources (EC2 instances, EKS cluster, etc.) after testing to avoid unnecessary costs.

## Environments

In real-world scenarios, deployment typically happens in multiple environments (e.g., dev, test, production). However, for this project, we focus on deploying to a single **dev environment**.


