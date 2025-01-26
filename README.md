# Mahiru Habits - Трекер полезных привычек

## Описание проекта

Проект представляет собой REST API сервис для отслеживания полезных привычек. Пользователи могут создавать, отслеживать и делиться своими привычками, получать уведомления через Telegram.

## [Работающее приложение тут](http://89.169.173.170)

## Технологии

- Python 3.10+
- Django 5.1
- Django REST Framework
- PostgreSQL
- Celery
- Redis
- Simple JWT
- Swagger/drf-yasg
- Docker & Docker Compose
- Nginx

## Запуск проекта

### Предварительные требования

- Docker
- Docker Compose

### Локальная разработка

1. Клонировать репозиторий:

   ```bash
   git clone https://github.com/Showeelik/Mahiru_Habits_Coursework.git
   cd Mahiru_Habits_Coursework
   ```

2. Создать файл `.env` на основе `.env.example`:

   ```bash
   cp .env.example .env
   ```

   Заполнить необходимые переменные окружения в файле .env

3. Собрать и запустить контейнеры:

   ```bash
   docker-compose up -d --build
   ```

4. Проект будет доступен по адресу: http://localhost:80

### Остановка проекта

```bash
docker-compose down
```

## API Endpoints

- `POST /api/register/` - Регистрация пользователя
- `POST /api/token/` - Получение JWT токена
- `GET /api/habits/` - Список привычек авторизованного пользователя
- `POST /api/habits/` - Создание новой привычки
- `GET /api/habits/public/` - Список публичных привычек
- `GET /api/habits/<int:pk>/` - Получение деталей конкретной привычки
- `PUT /api/habits/<int:pk>/` - Обновление конкретной привычки
- `PATCH /api/habits/<int:pk>/` - Частичное обновление конкретной привычки
- `DELETE /api/habits/<int:pk>/` - Удаление конкретной привычки
- `/swagger/` - Swagger документация
- `/redoc/` - ReDoc документация

## Настройка CI/CD

### GitHub Actions

1. Добавьте следующие секреты в настройки GitHub репозитория:

   - `SERVER_HOST` - IP-адрес вашего сервера
   - `SERVER_USER` - Имя пользователя на сервере
   - `SSH_PRIVATE_KEY` - SSH-ключ для доступа к серверу

2. При пуше в ветку main автоматически запускаются:
   - Тесты
   - Линтинг кода
   - Сборка Docker образов
   - Деплой на сервер

### Настройка сервера

1. Установите Docker:

   ```bash
   sudo apt update
   sudo apt install docker.io
   ```

2. Установите Docker Compose:

   ```bash
   sudo curl -L "https://github.com/docker/compose/releases/download/v2.24.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
   sudo chmod +x /usr/local/bin/docker-compose
   ```

3. Настройте SSH доступ для GitHub Actions

## Функциональность

- Регистрация и авторизация пользователей
- CRUD операции с привычками
- Публичные и приватные привычки
- Интеграция с Telegram для уведомлений
- Отложенные задачи через Celery
- Валидация данных привычек
- Пагинация (5 привычек на страницу)
- API документация (Swagger/ReDoc)

## Тестирование

Запуск тестов в Docker:

```bash
docker-compose exec web python manage.py test
```

## Развернутое приложение

Приложение доступно по адресу: http://158.160.73.162/

API документация:

- Swagger: http://158.160.73.162/swagger/
- ReDoc: http://158.160.73.162/redoc/

## Автор

[mahiru]

## Контакты

Email: [mahiru@mahiru.com]  
Telegram: [@mahiru]
