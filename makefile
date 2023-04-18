install:
	npm install

dev: install	
	npm run dev

build: install
	npm run build

start: build
	npm run start

up:
	docker compose up -d --build

up-proxy:
	docker compose \
		-f docker-compose.yml \
		-f docker-compose.proxy.yml \
		up -d --build

codechat:
	docker compose \
		-f docker-compose.yml \
		-f docker-compose.codechat.yml \
		up -d --build

codechat-db:
	docker compose \
		-f docker-compose.yml \
		-f docker-compose.codechat.yml \
		-f docker-compose.codechat-db.yml \
		up -d --build

codechat-redis:
	docker compose \
		-f docker-compose.yml \
		-f docker-compose.codechat.yml \
		-f docker-compose.codechat-redis.yml \
		up -d --build

codechat-full:
	docker compose \
		-f docker-compose.yml \
		-f docker-compose.codechat.yml \
		-f docker-compose.codechat-db.yml \
		-f docker-compose.codechat-redis.yml \
		up -d --build

logs:
	docker compose logs -f --tail 200 api

down:
	docker compose down --remove-orphans