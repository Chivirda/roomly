# Файл Makefile

# Переменные
EXEC=docker compose exec app
UP=docker compose up -d
DOWN=docker compose down
BUILD=docker compose build

# Команды для работы с контейнерами
up:
	$(UP)

down:
	$(DOWN)

restart:
	$(DOWN)
	$(UP)

build:
	$(BUILD)

# Удобные команды внутри контейнера app
artisan:
	$(EXEC) bash -c "cd src && php artisan $(filter-out $@,$(MAKECMDGOALS))"

composer:
	$(EXEC) bash -c "cd src && composer $(filter-out $@,$(MAKECMDGOALS))"

npm:
	$(EXEC) bash -c "cd src && npm $(filter-out $@,$(MAKECMDGOALS))"

yarn:
	$(EXEC) bash -c "cd src && yarn $(filter-out $@,$(MAKECMDGOALS))"

# Специальный трюк для передачи аргументов после artisan/composer/npm
%:
	@:

