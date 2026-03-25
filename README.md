# Database and Docker Learning

A hands-on learning repository covering **relational databases**, **SQL**, **ER diagram design**, and **Docker** containerization for database environments.

---

## Contents

| Folder | Description | Key Concepts |
|--------|-------------|--------------|
| **DATA BASE** | SQL scripts, AIUB course materials, and lab tasks | SQL queries, Oracle XE, HR schema, database fundamentals |
| **Docker** | Docker commands cheat sheet and MongoDB setup | Container management, Docker Compose, YAML configuration |
| **ER Diagram** | Entity-Relationship diagram practice | E-commerce ER design, Cricket Club database design |
| **Image** | Repository images and diagrams | Supporting visual assets |

---

## DATA BASE

| Resource | Description |
|----------|-------------|
| `HR.sql` | HR schema SQL script for practice |
| `Inturduction/` | Introduction to database concepts with screenshots |
| `Oracle-XE/` | Oracle Express Edition setup materials |
| `AIUB Course/` | Course slides (8 lectures) and lab assignments |
| `Task/` | SQL lab tasks and exercises |

## Docker

- **Docker.md** -- Commands cheat sheet covering images, containers, volumes, networks, and Docker Hub
- **MongoDB.yaml** -- Docker Compose file for setting up a MongoDB instance

## ER Diagram

| Diagram | Tool |
|---------|------|
| Cricket Club Database | draw.io |
| E-commerce Database | draw.io |

---

## Prerequisites

- Oracle XE or any SQL-compatible database (MySQL, PostgreSQL)
- Docker and Docker Compose (for containerization section)
- draw.io or any `.drawio` compatible editor (for ER diagrams)

## How to Use

1. Clone the repository:
   ```bash
   git clone https://github.com/ALPHAMAN-0/Data-Base.git
   ```
2. **SQL Practice**: Load `HR.sql` into your database instance and run queries.
3. **Docker Setup**: Follow `Docker/Docker.md` for commands, or run the MongoDB compose file:
   ```bash
   cd Docker/How\ to\ install\ mongo/
   docker compose -f MongoDB.yaml up
   ```
4. **ER Diagrams**: Open `.drawio` files at [app.diagrams.net](https://app.diagrams.net) or in VS Code with the Draw.io extension.
