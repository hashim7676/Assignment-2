#!/bin/bash

# Navigate to the directory where Docker Compose file is located
cd /home/ec2-user/devops/Assignment-2


# Pull the latest changes from the GitHub repository
git pull origin main

# Build and start the Docker containers using Docker Compose
docker-compose -f docker-compose.yaml down
docker-compose -f docker-compose.yaml pull
docker-compose -f docker-compose.yaml up -d

# Add any additional commands or steps needed for your specific deployment proc>
# For example, running database migrations, restarting services, etc.

echo "Deployment to Staging Server completed!"
