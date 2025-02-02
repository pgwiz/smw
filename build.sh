#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Install PostgreSQL and Rust
apt-get update
apt-get install -y libpq-dev rustc

# Install Python dependencies
pip install -r requirements.txt

# Apply database migrations
python manage.py migrate

# Collect static files
python manage.py collectstatic --noinput
