#!/bin/bash

# Выход при ошибке любой команды
set -e

# Применяем миграции
echo "Applying migrations..."
python manage.py migrate

# Сбор статических файлов
echo "Collecting static files..."
python manage.py collectstatic --noinput
