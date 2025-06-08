#!/usr/bin/env bash
set -o errexit  # Exit on any error

# Install dependencies
pip install -r requirements.txt

# Collect static files
python manage.py collectstatic --no-input

# Apply database migrations
python manage.py migrate
