# wait-for-(mysql|postgres|mongodb|redis|dynamodb)

Package that provides a shell script to wait for mysql/mariadb and postgres to be ready.

Does not actually contain any PHP.

[![Test](https://github.com/matthewbaggett/wait-for-mysql/actions/workflows/test.yml/badge.svg)](https://github.com/matthewbaggett/wait-for-mysql/actions/workflows/test.yml)

## Usage

```bash
export MYSQL_HOST=localhost
export MYSQL_PORT=3306
vendor/bin/wait-for-mysql
```

Or using a DSN:

```bash
export MYSQL_DSN=mysql://user:password@hostname:port/database
vendor/bin/wait-for-mysql
```

## MySQL/MariaDB Flavour

| Input      | Environment Variables                                                                             | Example Input                                  | Default     |
| ---------- | ------------------------------------------------------------------------------------------------- | ---------------------------------------------- | ----------- |
| MYSQL_HOST | <ul><li>MYSQL_HOST</li><li>MYSQL_HOSTNAME</li><li>MARIADB_HOST</li><li>MARIADB_HOSTNAME</li></ul> | `hostname`                                     | `localhost` |
| MYSQL_PORT | <ul><li>MYSQL_PORT</li><li>MARIADB_PORT</li></ul>                                                 | `3306`                                         | `3306`      |
| MYSQL_DSN  | <ul><li>MYSQL_DSN</li><li>MYSQL_URL</li><li>DATABASE_DSN</li><li>DATABASE_URL</li></ul>           | `mysql://user:password@hostname:port/database` |             |

## Postgres Flavour

There's also a postgres flavour, `wait-for-postgres` which has similar usage and environment variables as above.

| Input         | Environment Variables                                                                                                             | Example Input                                     | Default     |
| ------------- | --------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------- | ----------- |
| POSTGRES_HOST | <ul><li>POSTGRES_HOST</li><li>POSTGRES_HOSTNAME</li><li>PGSQL_HOST</li><li>PGSQL_HOSTNAME</li></ul>                               | `hostname`                                        | `localhost` |
| POSTGRES_PORT | <ul><li>POSTGRES_PORT</li><li>PGSQL_PORT</li></ul>                                                                                | `5432`                                            | `5432`      |
| POSTGRES_DSN  | <ul><li>POSTGRES_DSN</li><li>POSTGRES_URL</li><li>PGSQL_DSN</li><li>PGSQL_DSN</li><li>DATABASE_DSN</li><li>DATABASE_URL</li></ul> | `postgres://user:password@hostname:port/database` |             |

## MongoDB Flavour

There's also a mongodb flavour:

| Input            | Environment Variables                                                                       | Example Input                                    | Default     |
| ---------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------ | ----------- |
| MONGODB_HOST     | <ul><li>MONGODB_HOST</li><li>MONGODB_HOSTNAME</li></ul>                                     | `hostname`                                       | `localhost` |
| MONGODB_PORT     | <ul><li>MONGODB_PORT</li></ul>                                                              | `27017`                                          | `27017`     |
| MONGODB_DSN      | <ul><li>MONGODB_DSN</li><li>MONGODB_URL</li><li>DATABASE_DSN</li><li>DATABASE_URL</li></ul> | `mongodb://user:password@hostname:port/database` |             |
| MONGODB_DATABASE | <ul><li>MONGODB_DATABASE</li></ul>                                                          | `database`                                       |             |
| MONGODB_USERNAME | <ul><li>MONGODB_USERNAME</li></ul>                                                          | `username`                                       |             |
| MONGODB_PASSWORD | <ul><li>MONGODB_PASSWORD</li></ul>                                                          | `password`                                       |             |

## Redis Flavour

There's also a redis flavour:

| Input          | Environment Variables                               | Example Input | Default |
| -------------- | --------------------------------------------------- | ------------- | ------- |
| REDIS_HOST     | <ul><li>REDIS_HOST</li><li>REDIS_HOSTNAME</li></ul> | `hostname`    | `redis` |
| REDIS_PORT     | <ul><li>REDIS_PORT</li></ul>                        | `6379`        | `6379`  |
| REDIS_PASSWORD | <ul><li>REDIS_PASSWORD</li></ul>                    | `password`    |         |

## DynamoDB Flavour

There's also a dynamodb flavour:

| Input             | Environment Variables               | Example Input        | Default |
| ----------------- | ----------------------------------- | -------------------- | ------- |
| DYNAMODB_ENDPOINT | <ul><li>DYNAMODB_ENDPOINT</li></ul> | `http://dynamo:8000` |         |
