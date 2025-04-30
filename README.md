[![Laravel](https://img.shields.io/badge/Laravel-11.x-red)](https://laravel.com)
[![Vue.js](https://img.shields.io/badge/Vue.js-3.x-42b883)](https://vuejs.org/)
[![Docker Ready](https://img.shields.io/badge/Docker-Ready-blue)](https://www.docker.com/)

# Roomly

**Roomly** — это сервис бронирования переговорных комнат, разработанный на стеке **Laravel 11 + Vue 3 + Inertia.js**.  
Проект использует **Docker** для удобной локальной разработки.

---

## Стек технологий

- PHP 8.3 (FPM)
- Laravel 11
- Vue 3 + Inertia.js
- Postgresql 15
- Nginx
- Mailpit (перехват почты)
- pgAdmin (управление базой данных)

---

## Быстрый старт

### 1. Клонируйте репозиторий

```bash
git clone <url репозитория> roomly
cd roomly
```

### 2. Настройте окружение

Создайте `.env` файл, скопировав пример:

```bash
cp .env.example .env
```

Проверьте параметры подключения к БД, почте и портам в `.env` при необходимости.

### 3. Запустите окружение

```bash
make up
```

### 4. Установите Laravel-проект (если ещё не установлен)

```bash
make composer create-project laravel/laravel src
make artisan key:generate
```

### 5. Выполните миграции

```bash
make artisan migrate
```

---

## Доступ к сервисам

| Сервис         | URL                  |
|----------------|-----------------------|
| Frontend/Backend (Nginx + Laravel) | http://localhost:8000 |
| pgAdmin        | http://localhost:8080 |
| Mailpit (перехват писем) | http://localhost:8025 |

---

## Полезные команды

| Описание | Команда |
|:---------|:--------|
| Запуск контейнеров | `make up` |
| Остановка контейнеров | `make down` |
| Перезапуск окружения | `make restart` |
| Выполнить команду Artisan | `make artisan <команда>` |
| Выполнить команду Composer | `make composer <команда>` |
| Выполнить команду NPM | `make npm <команда>` |
| Выполнить команду Yarn | `make yarn <команда>` |

Примеры:
```bash
make artisan migrate
make composer install
make npm run dev
```

---

## Структура проекта

```
roomly/
├── .env              # Docker окружение (порты, базы, пароли)
├── docker-compose.yml
├── Dockerfile
├── Makefile
├── docker/
│   └── nginx/
│       └── default.conf
├── src/              # Laravel проект
│   ├── .env          # Laravel настройки
│   ├── app/
│   ├── public/
│   ├── routes/
│   └── ...
```

---

## Требования

- Docker
- Docker Compose
- make (предустановлен в Linux/macOS; на Windows можно через WSL)

---

## Дополнительная информация

- При перехвате писем используется [Mailpit](https://github.com/axllent/mailpit).
- Для работы с базой данных используется [phpMyAdmin](https://www.phpmyadmin.net/).
- Все сервисы общаются внутри отдельной Docker-сети `roomly`.

---

## Автор

- Чивирда Сергей Иванович  
- Telegram: [@Chivirda](https://t.me/Chivirda)

---

# 🚀 Удачной работы над Roomly!
