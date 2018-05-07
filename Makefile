build:
	docker-compose build

up:
	docker-compose up -d api

down:
	docker-compose down

logs:
	docker logs -f api