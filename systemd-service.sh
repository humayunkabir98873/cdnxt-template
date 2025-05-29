#!/bin/bash
set -e

echo "=== Creating systemd service for Docker Compose stack ==="

SERVICE_FILE=/etc/systemd/system/cdnxt.service

sudo bash -c "cat > $SERVICE_FILE" << EOF
[Unit]
Description=CDNXT Docker Compose Service
After=network.target docker.service
Requires=docker.service

[Service]
Type=oneshot
RemainAfterExit=yes
WorkingDirectory=$(pwd)
ExecStart=/usr/bin/docker-compose up -d
ExecStop=/usr/bin/docker-compose down
TimeoutStartSec=0

[Install]
WantedBy=multi-user.target
EOF

echo "=== Reloading systemd and enabling service ==="
sudo systemctl daemon-reload
sudo systemctl enable cdnxt.service
sudo systemctl start cdnxt.service

echo "=== Service started. Use 'sudo systemctl status cdnxt' to check status ==="
