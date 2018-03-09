#!/usr/bin/env bash
pip install -r requirements.txt
export DATABASE_URL=pgsql://YOUR_USER:YOUR_PWD@127.0.0.1:5432/your-db
python manage.py makemigrations
python manage.py migrate
python manage.py runserver
