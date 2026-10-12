A containerized Node.js application designed for deployment on
an AWS EC2 Linux virtual machine.

## Technology Stack

- Node.js
- Express
- Docker
- AWS EC2
- Linux and Bash

## Features

- REST endpoint for application information
- Health-check endpoint
- Docker-based application packaging
- Deployment helper script
- Container restart policy

## API Endpoints

| Method | Endpoint | Description |
|---|---|---|
| GET | / | Application information |
| GET | /health | Health status |

## Build the Docker Image

```bash
docker build -t cloud-deployed-nodejs-app .
```

## Run Locally

```bash
docker run --rm -p 3000:3000 cloud-deployed-nodejs-app
```

Visit http://localhost:3000/health.

## Deployment

On a Linux VM with Docker installed, make the script executable:

```bash
chmod +x deploy.sh
./deploy.sh
```

The script binds the application to localhost on port 3000
by default. Verify it with:

```bash
curl http://127.0.0.1:3000/health
```

## AWS Deployment Plan

1. Launch an eligible AWS EC2 Linux instance.
2. Configure secure SSH access.
3. Install Docker.
4. Clone this repository.
5. Run the deployment script.
6. Verify the application health endpoint.

## Learning Objectives

- Understand cloud virtual machines
- Deploy containerized applications
- Work with Linux and Docker
- Verify application availability
- Practice basic deployment troubleshooting

