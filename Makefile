.PHONY: all build test test-dynamodb test-mongo test-mysql test-postgres test-redis
.SILENT: all build test test-dynamodb test-mongo test-mysql test-postgres test-redis
all: build test
build:
	docker compose --progress=plain build
test: test-dynamodb test-mongo test-mysql test-postgres test-redis

test-dynamodb:
	docker compose run test /usr/local/bin/wait-for-dynamodb
test-mongo:
	docker compose run test /usr/local/bin/wait-for-mongo
test-mysql:
	docker compose run test /usr/local/bin/wait-for-mysql
test-postgres:
	docker compose run test /usr/local/bin/wait-for-postgresql
test-redis:
	docker compose run test /usr/local/bin/wait-for-redis

