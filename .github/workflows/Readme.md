Docker Build and Deploy GitHub Actions Workflow

This GitHub Actions workflow automates the process of building Docker images and deploying them to a server via SSH. It triggers on pushes to the DockerBack and main branches of your repository.
Workflow Description

    Checkout repository: This step checks out the repository so that subsequent steps can access its contents.

    Build and push Docker images: This step builds Docker images based on the docker-compose.yml file and pushes them to a Docker registry. Images are tagged as abobys/db:latest, abobys/phpmyadmin:latest, abobys/wordpress:latest, and abobys/nginx:latest.

    SSH Deploy to Server: This step deploys the Docker images to a server using SSH. It stops the existing containers, pulls the latest images, and starts the updated containers on the server.

Prerequisites

    Docker and Docker Compose installed on the server.
    SSH access to the server with necessary permissions.

Usage

    Ensure that the necessary secrets (USERNAME and PASSWORD) are created in the repository settings on GitHub.
    Replace /path/to/your/docker-compose/folder in the workflow script with the actual path to the folder containing your docker-compose.yml file.
    Configure the server to handle the deployment of Docker containers and ensure proper network setup, environment variables, and volumes.

Workflow Setup

To set up this workflow in your repository:

    Copy the provided GitHub Actions workflow file (deploy.yml) into your repository's .github/workflows directory.
    Ensure that the docker-compose.yml file is located at the root of your repository.
    Commit and push the changes to trigger the workflow.

Notes

    This workflow assumes that the server is running Ubuntu. Modify the workflow if you are using a different operating system.
    Ensure that the Docker images are accessible to the server where they are being deployed.
    Customize the workflow as needed to fit your deployment requirements.

Contributors

    https://github.com/GigachadVladyslav

License

This project is licensed under the MIT License.

Feel free to contribute, report issues, or provide feedback!