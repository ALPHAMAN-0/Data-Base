Docker Commands Cheat Sheet
A quick reference for essential Docker commands categorized by functionality.

🖼️ Images
List local images: docker images

Delete an image: docker rmi <image_name>

Remove unused images: docker image prune

Build an image: docker build -t <image_name>:<version> .

📦 Containers
List all containers: docker ps -a

Run a container: docker run <image_name>

Start/Stop container: docker start|stop <container_id>

Remove a container: docker rm <container_id>

🔧 Troubleshooting
View logs: docker logs <container_id>

Open shell inside container: docker exec -it <container_id> /bin/bash

☁️ Docker Hub
Pull image: docker pull <image_name>

Push image: docker push <username>/<image_name>

Login/Logout: docker login | docker logout

💾 Volumes
List volumes: docker volume ls

Create volume: docker volume create <volume_name>

Mount volume: docker run --volume <volume_name>:<mount_path>

🌐 Networks
List networks: docker network ls

Create network: docker network create <network_name>

Remove network: docker network rm <network_name>