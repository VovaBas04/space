composer:
	@docker-compose exec php-fpm composer install --no-interaction

configure:
	@docker-compose exec app php artisan migrate

up:
	@docker-compose up -d
	@make -s composer
	@make -s configure

build-up:
	@docker-compose up -d --build
	@make -s composer
	@make -s configure
dump:
	@docker-compose exec db createuser  vova
	@docker-compose exec db createdb -U postgres space
	@docker-compose exec db pg_restore -U postgres -d space dump/space.sql -x
down:
	@docker-compose down

open:
	@docker-compose exec app bash
