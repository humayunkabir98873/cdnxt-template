# CDNXT Template

A reseller hosting control panel template with React frontend, Node.js backend, PostgreSQL database, secured by JWT authentication, and production-ready deployment with Traefik and Docker Compose including SSL via Let's Encrypt.

---

## Features

- OAuth2 / JWT Authentication
- Reseller dashboard with DNS & Email management forms
- Backend API with secure endpoints
- PostgreSQL for persistent data storage
- Reverse proxy & SSL termination via Traefik
- Multi-container Docker Compose setup

---

## Prerequisites

- Docker & Docker Compose installed (v2+ recommended)
- Linux VPS or local machine (Ubuntu/DigitalOcean recommended)
- Domain name pointed to your server IP (for SSL & Traefik)
- Basic knowledge of Docker, Git, and terminal

---

## Getting Started (Local Development)

1. Clone this repo:

   ```bash
   git clone https://github.com/humayunkabir98873/cdnxt-template.git
   cd cdnxt-template
