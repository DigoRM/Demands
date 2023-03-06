#!/usr/bin/env bash

# Install Python dependencies
python -m pip install --upgrade pip
pip install -r requirements.txt

# Run database migrations
python manage.py migrate

# Collect static files
python manage.py collectstatic --noinput

# Start the server
gunicorn distribute.wsgi --log-file -