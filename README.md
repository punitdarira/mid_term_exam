# Github webhook trigger

This repository contains a simple C++ application and a CI/CD pipeline to build and push a Docker image to Azure Container Registry.

## Repository Structure 
. 
    ├── .github │ 
        └── workflows │
        └── cicd.yaml # GitHub Actions workflow file 
    ├── Dockerfile # Dockerfile to build the C++ application 
    ├── Main.cpp # Main C++ application file 
    └── README.md # This README file


## Instructions to Build and Run the Application

### Prerequisites

- Docker installed on your machine
- Access to an Azure Container Registry

### Build the Docker Image

1. Clone the repository:
    ```sh
    git clone https://github.com/punitdarira/mid_term_exam.git
    cd mid_term_exam
    ```

2. Build the Docker image:
    ```sh
    docker build -t cicdmidterm.azurecr.io/myapp:latest .
    ```

3. Run the Docker container:
    ```sh
    docker run --rm cicdmidterm.azurecr.io/myapp:latest
    ```

## Steps to Test the CI Pipeline

1. Push changes to the `main` branch of your repository.
2. The GitHub Actions workflow defined in `.github/workflows/cicd.yaml` will automatically build the Docker image and push it to Azure Container Registry.

## Instructions to Pull the Docker Image from the Registry

1. Log in to Azure Container Registry:
    ```sh
    az acr login --name cicdmidterm
    ```

2. Pull the Docker image:
    ```sh
    docker pull cicdmidterm.azurecr.io/myapp:latest
    ```

3. Run the Docker container:
    ```sh
    docker run --rm cicdmidterm.azurecr.io/myapp:latest
    ```

## Repository Link

[GitHub Repository](https://github.com/punitdarira/mid_term_exam.git)
