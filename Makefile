PHONY: stop remove build up

stop:
	docker stop edgedb

remove:
	docker remove edgedb

build:
	docker compose build --no-cache

up:
	docker compose up -d

migrate:
	docker exec edgedb migrate.sh
