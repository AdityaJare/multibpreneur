#!/usr/bin/env bash
# exit on error
set -o errexit

echo "🔄 Upgrading pip..."
python -m pip install --upgrade pip

echo "📦 Installing dependencies..."
pip install -r requirements.txt

echo "🗃️ Making migrations..."
python manage.py makemigrations --noinput

echo "🔄 Running migrations..."
python manage.py migrate --noinput

echo "📂 Collecting static files..."
python manage.py collectstatic --noinput

echo "✅ Build completed successfully!"
