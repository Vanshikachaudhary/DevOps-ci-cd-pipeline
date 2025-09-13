SETUP INSTRUCTIONS

- Git installed locally
- Docker installed locally
- AWS account with EC2 access
- Jenkins setup in Docker or a virtual machine
- Terraform installed for infrastructure provisioning

  Step 1: Clone the repository to get the sample code

      git clone https://github.com/SwayattDrishtigochar/devops-task
      cd devops-task


  All files (Terraform, Docker, Jenkins) will be created in this folder.

  Step 2: Setting up the infrastructure

        cd Terraform/
        terraform init
        terraform validate
        terraform apply

  This deploys the EC2 instance for us.

  Step 3: Setting up Jenkins Server

  Installing the required plugins for Jenkins like Github integration, Docker pipeline
  Configure Jenkins credentials for:
   - GitHub (if private repo)
   - Docker Hub (for image push)
   - AWS Access Key & Secret
 
  Step 4: Running the pipeline



  PIPELINE FLOW

  1. Build Stage

     - Installs dependencies listed in the requirements. 
     - Runs unit tests to validate code integrity.

  2. Dockerize Stage

     - Builds a Docker image using the Dockerfile.
     - Tags the image with the latest commit hash.

  3. Push to Registry

     - Pushes the Docker image to Docker Hub.

  4. Deploy Stage
  
     - SSH into the EC2 instance.
     - Pulls the Docker image from Docker Hub.
     - Runs the container, exposing the application on a specified port.

 5. Monitoring & Logging
  
   - Configured with AWS CloudWatch to capture application logs and monitor instance health.
