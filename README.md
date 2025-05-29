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
   cp .env.example .env
Edit .env as needed (especially JWT_SECRET and DB_URL).
docker-compose up --build

Update your /etc/hosts (or local DNS) to map the demo domains to localhost:
127.0.0.1 cdnxt.localhost
127.0.0.1 api.localhost
127.0.0.1 traefik.localhost

Access in browser:

Frontend UI: https://cdnxt.localhost

API backend: https://api.localhost

Traefik dashboard: https://traefik.localhost
