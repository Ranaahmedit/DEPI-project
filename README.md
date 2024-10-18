# Deploy a web app using Terraform, EKS Cluster, ansible, and Jenkins

![image](https://github.com/user-attachments/assets/6cc6001f-ae27-4411-803d-9fa3b5d618a2)


# Jenkins Pipeline for Deploying Nginx web app on EKS

This project demonstrates how to deploy an Nginx web app to an AWS Elastic Kubernetes Service (EKS) cluster using Jenkins.


## Steps:

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

In real-world scenarios, deployment typically happens in multiple environments (e.g., dev, test, production). However, we focus on deploying to a single **dev environment**for this project.
---------------------------------------------------------------------------

# ✅ The next screens show proof that my project is running successfully

![image](https://github.com/user-attachments/assets/2a37776b-0c47-404f-b1b8-6c35c4c65aff)

![image](https://github.com/user-attachments/assets/e6b47f68-e81d-46c9-bde3-d176290a22cb)

![image](https://github.com/user-attachments/assets/20326645-77ff-4da7-90c2-a5981d24e150)

![image](https://github.com/user-attachments/assets/8d5f4c8a-f996-4719-8249-eb0f4de77c94)

![image](https://github.com/user-attachments/assets/858ae22a-1da4-4cdc-99f6-462092e852a9)

![image](https://github.com/user-attachments/assets/44c3ca94-ede5-44a9-92c5-572db563d01a)

![image](https://github.com/user-attachments/assets/505f46e1-1e8d-41be-833a-bbaf08657bf4)

![image](https://github.com/user-attachments/assets/9e730d46-2ca9-4db8-8240-98ef9404cb47)

![image](https://github.com/user-attachments/assets/5afaba8e-77d9-4df3-b9e6-855a62655bef)

![image](https://github.com/user-attachments/assets/a8b834ff-1805-49f4-b44d-ee6ffa37186b)

![image](https://github.com/user-attachments/assets/ef5c9e60-31ae-4713-b2c1-25841b1205b3)

![image](https://github.com/user-attachments/assets/c6a8767b-5a09-4d26-8052-1e0fcae538f0)




# 🚀Alright! Now it’s time to test the application! 🎉


![image](https://github.com/user-attachments/assets/0decde7c-cd40-4332-82cd-2b8159454782)




