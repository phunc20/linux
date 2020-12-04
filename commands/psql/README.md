## Initial configuration
To initialize the config, we must first switch to user `postgres`.
```bash
~ ❯❯❯ init
init    initdb  initex
~ ❯❯❯ init
init    initdb  initex
~ ❯❯❯ init
init    initdb  initex
~ ❯❯❯ sudo -iu postgres
[postgres@handshake-t400 ~]$ ls /var/lib/postgres/data/
[postgres@handshake-t400 ~]$ logout
~ ❯❯❯ ls /var/lib/postgres/data/
ls: cannot open directory '/var/lib/postgres/data/': Permission denied
~ ❯❯❯ sudo ls -l /var/lib/postgres/data
total 0
~ ❯❯❯ sudo ls -ld /var/lib/postgres/data
drwx------ 2 postgres postgres 4096 Dec  4 10:07 /var/lib/postgres/data
~ ❯❯❯ sudo -iu postgres
[postgres@handshake-t400 ~]$ initdb -D /var/lib/postgres/data
The files belonging to this database system will be owned by user "postgres".
This user must also own the server process.

The database cluster will be initialized with locale "en_US.UTF-8".
The default database encoding has accordingly been set to "UTF8".
The default text search configuration will be set to "english".

Data page checksums are disabled.

fixing permissions on existing directory /var/lib/postgres/data ... ok
creating subdirectories ... ok
selecting dynamic shared memory implementation ... posix
selecting default max_connections ... 100
selecting default shared_buffers ... 128MB
selecting default time zone ... Asia/Ho_Chi_Minh
creating configuration files ... ok
running bootstrap script ... ok
performing post-bootstrap initialization ... ok
syncing data to disk ... ok

initdb: warning: enabling "trust" authentication for local connections
You can change this by editing pg_hba.conf or using the option -A, or
--auth-local and --auth-host, the next time you run initdb.

Success. You can now start the database server using:

    pg_ctl -D /var/lib/postgres/data -l logfile start

[postgres@handshake-t400 ~]$
```


## Give your often-used user some priviledge
```bash
~ ❯❯❯ sudo -iu postgres
[postgres@handshake-t400 ~]$ createuser --interactive
Enter name of role to add: phunc20
Shall the new role be a superuser? (y/n) y
[postgres@handshake-t400 ~]$ logout
```

## Create/delete a database
- Create: **`createdb <databaseName>`**
- delete: **`dropdb <databaseName>`**
```bash
~ ❯❯❯ psql --list
List of databases
   Name    |  Owner   | Encoding |   Collate   |    Ctype    |   Access privileges
-----------+----------+----------+-------------+-------------+-----------------------
 postgres  | postgres | UTF8     | en_US.UTF-8 | en_US.UTF-8 |
 template0 | postgres | UTF8     | en_US.UTF-8 | en_US.UTF-8 | =c/postgres          +
           |          |          |             |             | postgres=CTc/postgres
 template1 | postgres | UTF8     | en_US.UTF-8 | en_US.UTF-8 | =c/postgres          +
           |          |          |             |             | postgres=CTc/postgres
(3 rows)
~ ❯❯❯ createdb restos
~ ❯❯❯ psql --list
List of databases
   Name    |  Owner   | Encoding |   Collate   |    Ctype    |   Access privileges
-----------+----------+----------+-------------+-------------+-----------------------
 postgres  | postgres | UTF8     | en_US.UTF-8 | en_US.UTF-8 |
 restos    | phunc20  | UTF8     | en_US.UTF-8 | en_US.UTF-8 |
 template0 | postgres | UTF8     | en_US.UTF-8 | en_US.UTF-8 | =c/postgres          +
           |          |          |             |             | postgres=CTc/postgres
 template1 | postgres | UTF8     | en_US.UTF-8 | en_US.UTF-8 | =c/postgres          +
           |          |          |             |             | postgres=CTc/postgres

(4 rows)

~ ❯❯❯ dropdb restos
~ ❯❯❯ psql --list
List of databases
   Name    |  Owner   | Encoding |   Collate   |    Ctype    |   Access privileges
-----------+----------+----------+-------------+-------------+-----------------------
 postgres  | postgres | UTF8     | en_US.UTF-8 | en_US.UTF-8 |
 template0 | postgres | UTF8     | en_US.UTF-8 | en_US.UTF-8 | =c/postgres          +
           |          |          |             |             | postgres=CTc/postgres
 template1 | postgres | UTF8     | en_US.UTF-8 | en_US.UTF-8 | =c/postgres          +
           |          |          |             |             | postgres=CTc/postgres

(3 rows)

~ ❯❯❯

```

## Using `psql` in the command line
```bash
~ ❯❯❯ createdb life
~ ❯❯❯ psql --list
                                  List of databases
   Name    |  Owner   | Encoding |   Collate   |    Ctype    |   Access privileges
-----------+----------+----------+-------------+-------------+-----------------------
 life      | phunc20  | UTF8     | en_US.UTF-8 | en_US.UTF-8 |
 postgres  | postgres | UTF8     | en_US.UTF-8 | en_US.UTF-8 |
 template0 | postgres | UTF8     | en_US.UTF-8 | en_US.UTF-8 | =c/postgres          +
           |          |          |             |             | postgres=CTc/postgres
 template1 | postgres | UTF8     | en_US.UTF-8 | en_US.UTF-8 | =c/postgres          +
           |          |          |             |             | postgres=CTc/postgres
(4 rows)

~ ❯❯❯ man psql
~ ❯❯❯ psql -d life
psql (12.5)
Type "help" for help.

life=# \help
Available help:
  ABORT                            CREATE FOREIGN DATA WRAPPER      DROP ROUTINE
  ALTER AGGREGATE                  CREATE FOREIGN TABLE             DROP RULE
  ALTER COLLATION                  CREATE FUNCTION                  DROP SCHEMA
  ALTER CONVERSION                 CREATE GROUP                     DROP SEQUENCE
  ALTER DATABASE                   CREATE INDEX                     DROP SERVER
  ALTER DEFAULT PRIVILEGES         CREATE LANGUAGE                  DROP STATISTICS
  ALTER DOMAIN                     CREATE MATERIALIZED VIEW         DROP SUBSCRIPTION
  ...
```

