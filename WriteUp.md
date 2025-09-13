PROJECT WRITE UP 

Tools and Services Used in the Project
- AWS EC2: Hosting the application
- Docker: helps with Containerization
- Terraform: Infrastructure provisioning for EC2
- Docker Hub: Used as a registry to store docker images
- Jenkins: Implemented a CI/CD pipeline for build, test, dockerize, push and deploy stages
- Github: Source code management
- Amazon CloudWatch: for basic monitoring and logging

CHALLENGES FACED DURING THE DEPLOYMENT
- Initially I had decided to use Amazon ECR to push container images but since I had limited resources to host the application on Amazon due to a free account, I had switched to Docker Hub.

- Getting hands-on with CloudWatch for monitoring and logging was a great learning experience. Although it was new to me, I was able to explore and adapt quickly, which helped me strengthen my understanding of AWS monitoring services.

-  Jenkins initially failed to push the image to Docker Hub with `unauthorized: incorrect username or password`. The fix was to create a Jenkins credential (username & access token) and reference it correctly in the pipeline script.

-   During multiple `terraform apply` runs, I ran into conflicts because the state file was local. To fix this, I had to carefully clean up old resources and re-run `terraform apply`. A better long-term fix would be to store the state remotely, maybe in an S3 bucket.

  FUTURE IMPROVEMENTS

  - Using Ansible for automating configuration management for installing Docker, Jenkins and Monitoring agents.
  - Setting up security improvements with IAM roles and permissions.
  - Integrating CloudWatch Alarms for setting up real-time alerts.
  - Introducing container orchestration with EKS or a local Kubernetes setup for scalability and high availability.
  - Using Terraform modules for code reusability. 
