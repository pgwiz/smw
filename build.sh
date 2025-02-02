#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e
apt install postgresql -y
apt install rust -y
# Install Python dependencies
pip install -r requirements.txt

# Apply database migrations
python manage.py migrate

# Collect static files
python manage.py collectstatic --noinput
