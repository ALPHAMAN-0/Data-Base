# Docker Commands Cheat Sheet

A quick reference for essential Docker commands categorized by functionality.

## 🖼️ Images
- **List local images**:  
  ```sh
  docker images
  ```
- **Delete an image**:  
  ```sh
  docker rmi <image_name>
  ```
- **Remove unused images**:  
  ```sh
  docker image prune
  ```
- **Build an image**:  
  ```sh
  docker build -t <image_name>:<version> .
  ```

## 📦 Containers
- **List all containers**:  
  ```sh
  docker ps -a
  ```
- **Run a container**:  
  ```sh
  docker run <image_name>
  ```
- **Start/Stop a container**:  
  ```sh
  docker start|stop <container_id>
  ```
- **Remove a container**:  
  ```sh
  docker rm <container_id>
  ```

## 🔧 Troubleshooting
- **View logs**:  
  ```sh
  docker logs <container_id>
  ```
- **Open shell inside container**:  
  ```sh
  docker exec -it <container_id> /bin/bash
  ```

## ☁️ Docker Hub
- **Pull image**:  
  ```sh
  docker pull <image_name>
  ```
- **Push image**:  
  ```sh
  docker push <username>/<image_name>
  ```
- **Login/Logout**:  
  ```sh
  docker login
  docker logout
  ```

## 💾 Volumes
- **List volumes**:  
  ```sh
  docker volume ls
  ```
- **Create volume**:  
  ```sh
  docker volume create <volume_name>
  ```
- **Mount volume**:  
  ```sh
  docker run --volume <volume_name>:<mount_path>
  ```

## 🌐 Networks
- **List networks**:  
  ```sh
  docker network ls
  ```
- **Create network**:  
  ```sh
  docker network create <network_name>
  ```
- **Remove network**:  
  ```sh
  docker network rm <network_name>
  ```

---
### 🚀 Happy Dockering!
