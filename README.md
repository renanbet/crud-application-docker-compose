# Medical procedures compose

Docker applciation to build and up:

- server: https://github.com/renanbet/medical-procedures-server
- client: https://github.com/renanbet/medical-procedures-client

## Requirements

- git
- docker
- docker-compose 3.7

## Linux enviroment

- Clone the repository

```
git clone https://github.com/renanbet/medical-procedures-compose.git
git checkout master
```

- Create medical db

```
create database medical
```

- Run initdb.sql script on db

```
initdb.sql
```

- Add execution permission on cli.sh

```
chmod +x cli.sh
```

- Install the client and server

```
make setup
```

- Services up

```
make up
```

or

```
docker-compose up -d
```

- Build service (not necessary on first time of compose up)

```
make build
```

or

```
docker-compose build --no-cache
```

## Application access

```
FRONT http://localhost:8080
API http://localhost:3000
```

- login: admin - password: admin

- login: user - password: user

## Logs

- Show Logs

```
make logs
```

or

```
docker-compose logs -f
```

## Services stop

```
make down
```

or

```
docker-compose down
```

## Tests

```
cd tests
make up
make logs
```
