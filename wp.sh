#!/bin/bash
# Update system packages
dnf update -y

# Install Docker
dnf install -y docker
systemctl enable --now docker

# Install Docker Compose v2
curl -SL https://github.com/docker/compose/releases/download/v2.24.6/docker-compose-linux-x86_64 -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

# Create project directory
mkdir -p /home/ec2-user/wordpress
cd /home/ec2-user/wordpress

# Write docker-compose.yml
cat > docker-compose.yml <<'EOF'
services:

  wordpress:
    image: wordpress
    restart: always
    ports:
      - 8080:80
    environment:
      WORDPRESS_DB_HOST: db
      WORDPRESS_DB_USER: exampleuser
      WORDPRESS_DB_PASSWORD: examplepass
      WORDPRESS_DB_NAME: exampledb
    volumes:
      - wordpress:/var/www/html

  db:
    image: mysql:8.0
    restart: always
    environment:
      MYSQL_DATABASE: exampledb
      MYSQL_USER: exampleuser
      MYSQL_PASSWORD: examplepass
      MYSQL_RANDOM_ROOT_PASSWORD: '1'
    volumes:
      - db:/var/lib/mysql

volumes:
  wordpress:
  db:
EOF

# Give ec2-user ownership
chown -R ec2-user:ec2-user /home/ec2-user/wordpress

# Start containers
/usr/local/bin/docker-compose up -d
