# wait-for-mysql & wait-for-postgres
Package that provides a shell script to wait for mysql/mariadb and postgres to be ready. 

Does not actually contain any PHP.

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

## Environment Variables Detected:
| Input      | Environment Variables                                                                             | Example Input                                  | Default     |
|------------|---------------------------------------------------------------------------------------------------|------------------------------------------------|-------------|
| MYSQL_HOST | <ul><li>MYSQL_HOST</li><li>MYSQL_HOSTNAME</li><li>MARIADB_HOST</li><li>MARIADB_HOSTNAME</li></ul> | `hostname`                                     | `localhost` |
| MYSQL_PORT | <ul><li>MYSQL_PORT</li><li>MARIADB_PORT</li></ul>                                                 | `3306`                                         | `3306`      |
| MYSQL_DSN  | <ul><li>MYSQL_DSN</li><li>MYSQL_URL</li><li>DATABASE_DSN</li><li>DATABASE_URL</li></ul>           | `mysql://user:password@hostname:port/database` |             |

## Postgres Flavour
There's also a postgres flavour, `wait-for-postgres` which has similar usage and environment variables as above. 

| Input         | Environment Variables                                                                                                             | Example Input                                     | Default     |
|---------------|-----------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------|-------------|
| POSTGRES_HOST | <ul><li>POSTGRES_HOST</li><li>POSTGRES_HOSTNAME</li><li>PGSQL_HOST</li><li>PGSQL_HOSTNAME</li></ul>                               | `hostname`                                        | `localhost` |
| POSTGRES_PORT | <ul><li>POSTGRES_PORT</li><li>PGSQL_PORT</li></ul>                                                                                | `5432`                                            | `5432`      |
| POSTGRES_DSN  | <ul><li>POSTGRES_DSN</li><li>POSTGRES_URL</li><li>PGSQL_DSN</li><li>PGSQL_DSN</li><li>DATABASE_DSN</li><li>DATABASE_URL</li></ul> | `postgres://user:password@hostname:port/database` |             |         
