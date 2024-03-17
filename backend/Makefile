configure:
	@docker-compose exec app php artisan migrate

up:
	@docker-compose up -d
	@docker-compose exec app php artisan storage:link
	@make -s load

load:
	@docker-compose exec db psql -U name space -f ./backup/space.pgsql

save:
	@docker-compose exec db pg_dump -U name space > ./backup/space.pgsql

down:
	@docker-compose down

open:
	@docker-compose exec app bash
