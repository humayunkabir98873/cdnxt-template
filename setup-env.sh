#!/bin/bash
set -e

echo "=== Creating environment variables file ==="

cat > .env << EOF
JWT_SECRET=your_jwt_secret_here
DB_URL=postgres://user:password@db:5432/cdnxt
CLIENT_URL=http://localhost:3000
EOF

echo "=== .env file created. Please edit values as needed ==="
