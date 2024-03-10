PHONY: stop remove build up restart

stop:
	docker stop edgedb

remove:
	docker remove edgedb

build:
	docker compose build --no-cache

up:
	docker compose up -d

migrate:
	docker exec -it edgedb bash ./migrate.sh

restart: stop remove build up migrate
